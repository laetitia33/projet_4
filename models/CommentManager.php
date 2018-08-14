<?php
namespace Laetitia_Bernardi\projet4\Model;
require_once("models/Manager.php");

use \DateTime;
use \PDO;

class CommentManager extends Manager
{

protected $id, $post_id, $author, $comment, $comment_date, $reporting;


   public function __construct()
    {
        $this->_comment_date = new DateTime('now');
        
    }

    public function getIdComment()
    {
        return $this->_id_comment;
    }

 
    public function getIdPost()
    {
        return $this->_post_id;
    }


    public function getAuthor()
    {
        return $this->_author;
    }

 
    public function getComment()
    {
        return $this->_comment;
    }

   
    public function getCommentDate()
    {
        return $this->_comment_date;
    }

   
    public function getReporting()
    {
        return $this->_reporting;
    }



    public function setIdComment($id_comment)
    {
        $id_comment = (int) $id_comment;

        if ($id_comment > 0) {
            $this->_id_comment = $id_comment;
        }
    }

 
    public function setIdPost($post_id)
    {
        $post_id = (int) $post_id;

        if ($post_id > 0) {
            $this->_post_id = $post_id;
        }
    }

 
    public function setAuthor($author)
    {
        if(is_string($author)) {
            $this->_author = $author;
        }
    }

   
    public function setComment($comment)
    {
        if(is_string($comment)) {
            $this->_comment = $comment;
        }
    }

  
    public function setCommentDate(DateTime $comment_date)
    {
        $this->_comment_date = $comment_date;
    }

   
    public function setReporting($reporting)
    {
        $this->_reporting = $reporting;
    }


    // dernier commentaire

    public function getLastComment()
    {
        $db = $this->dbConnect();
        $comment = $db->query('SELECT author, comment, DATE_FORMAT(comment_date, \'%d/%m/%Y à %H:%i\') AS comment_date_fr FROM comments ORDER BY comment_date DESC LIMIT 0, 1');
        return $comment;
    }




    //tous les commentaires

    public function getAllComments()
    {
        $db = $this->dbConnect();
        $comments = $db->query('SELECT id, post_id, author, comment, reporting, DATE_FORMAT(comment_date, \'%d/%m/%Y à %H:%i\') AS comment_date_fr FROM comments ORDER BY comment_date DESC');
        return $comments;
    }




    //commentaires signalés


    public function getReportComments()
    {
        $db = $this->dbConnect();

        $reportComments = $db->query('SELECT id, post_id, author, comment, reporting, DATE_FORMAT(comment_date, \'%d/%m/%Y à %H:%i\') AS comment_date_fr FROM comments WHERE reporting= 1 ORDER BY reporting DESC');
        return $reportingComments;
    }

    //nombre de commentaires
    public function countComments()
    {
        $db = $this->dbConnect();
        $req = $db->query('SELECT COUNT(*) AS total_comments FROM comments');
        $req->execute();
        $commentsTotal = $req->fetch();
        return $commentsTotal;
    }


    //nombre de commentaires signalés
    
    public function countCommentsReport()
    {
        $db = $this->dbConnect();
        $req = $db->query('SELECT COUNT(*) AS total_comments_report FROM comments WHERE reporting = 1');
        $req->execute();
        $commentsReportTotal = $req->fetch();
        return $commentsReportTotal;
    }

    //recupere les commentaires d'un chapitre avec son id

    public function getComments($post_id)
    {
        $this->setIdPost($post_id);

        $db = $this->dbConnect();
        $comments = $db->prepare('SELECT id, author, comment, reporting, DATE_FORMAT(comment_date, \'%d/%m/%Y à %Hh%imin\') AS comment_date_fr FROM comments WHERE post_id = ? ORDER BY comment_date DESC');
        $comments->execute(array($this->getIdPost()));

        return $comments;
    }


    //Récupère un commentaire via son identifiant
    public function getCommentById($id_comment)
    {
        $this->setIdComment($id_comment);

        $db = $this->dbConnect();
        $comments = $db->prepare('SELECT id, author, comment, DATE_FORMAT(comment_date, \'%d/%m/%Y à %H:%i\') AS comment_date_fr FROM comments WHERE id= ?');
        $comments->execute(array($this->getIdComment()));
        $comment = $comments->fetch();

        return $comment;
    }

    //envoi d'un commentaire
    public function createComment($post_id, $author, $comment)
    {
        $this->setIdPost($post_id);
        $this->setAuthor($author);
        $this->setComment($comment);

        $db = $this->dbConnect();
        $comments = $db->prepare('INSERT INTO comments (post_id, author, comment, comment_date) VALUES( ?, ?, ?, NOW())');
        $createComment = $comments->execute(array(
            $this->getIdPost(),
            $this->getAuthor(),
            $this->getComment()
        ));

        return $createComment;
    }

    public function updateComment($id_comment, $post_id, $author, $comment)
    {
        $this->setIdComment($id_comment);
        $this->setIdPost($post_id);
        $this->setAuthor($author);
        $this->setComment($comment);

        $db = $this->dbConnect();
        $comments = $db->prepare('UPDATE comments SET post_id= :post_id, author= :author, comment= :comment, comment_date= NOW() WHERE id= :id_comment');
        $comments->bindParam('id_chapter', $this->getIdPost(), PDO::PARAM_INT);
        $comments->bindParam('author',$this->getAuthor(), PDO::PARAM_STR);
        $comments->bindParam('comment',$this->getComment(), PDO::PARAM_STR);
        $comments->bindParam('id_comment', $this->getIdComment(), PDO::PARAM_INT);
        $updateComment = $comments->execute();

        return $updateComment;
    }


   
    public function deleteComment($id_comment)
    {
        $this->setIdComment($id_comment);

        $db = $this->dbConnect();
        $comment = $db->prepare('DELETE FROM comments WHERE id= ?');
        $deleteComment = $comment->execute(array($this->getIdComment()));

        return $deleteComment;
    }

    //Supprime tous les commentaires d'un chapitre
   
    public function deleteAllComments($post_id)
    {
        $this->setIdPost($post_id);

        $db = $this->dbConnect();
        $comments = $db->prepare('DELETE FROM comments WHERE post_id= ?');
        $deleteComments = $comments->execute(array($this->getIdPost()));

        return $deleteComments;
    }

  
    public function reportComment($id_comment)
    {
        $this->setIdComment($id_comment);

        $db = $this->dbConnect();

        $comments = $db->prepare('UPDATE comments SET reporting= :reporting WHERE id= :id_comment');
        $comments->bindValue(':reporting', 1, \PDO::PARAM_INT);
        $comments->bindParam(':id_comment', $this->getIdComment(), \PDO::PARAM_INT);
        $report = $comments->execute();
        $_SESSION['script'] = '<script>sendAlert</script>';

        return $report;
    }
    

  

    //Valide un commentaire en retirant son signalement
  
    public function approvedComment($id_comment)
    {
        $this->setIdComment($id_comment);

        $db = $this->dbConnect();
        $comments = $db->prepare('UPDATE comments SET reporting= :reporting WHERE id= :id_comment');
        $comments->bindValue(':reporting', 0, \PDO::PARAM_INT);
        $comments->bindParam(':id_comment', $this->getIdComment(), \PDO::PARAM_INT);
        $report = $comments->execute();
     

        return $report;
    }

    


    
}