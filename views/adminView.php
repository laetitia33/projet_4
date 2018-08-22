
<?php $title = 'Bienvenue Jean'; ?>

<?php ob_start(); ?>
    <div id="adminView"></div>
    <p class ="bienvenue">Bienvenue sur votre compte, <?= $_SESSION['pseudo'].'!'; ?></p>

<?php $header = ob_get_clean(); ?>



<?php

while ($data = $post->fetch())
{
    ?>

    <h2>Dernier Chapitre:</h2>
    <div class= "adminPost">
                <h2><?= (htmlspecialchars($data['title'])) ?></h2>
                <p><span class="publishing"><i class="far fa-calendar-alt"> le <?= $data['date_creation_fr'] ?></i></span></p>
                    
        
            <div class="news" >
                <?= nl2br(htmlspecialchars(substr($data['content'], 0, 500))); ?>...
            </div>
            
            <a  class="input_read" href="index.php?action=post&amp;post_id=<?= $data['id']; ?>">En lire plus</a>
            
       
    </div>

    <?php
} // fin de la boucle des chapitres



$post->closeCursor();
?>
    
        <h2>Dernier Commentaire:</h2>
<div class = "commentaires">
    <?php

    while ($data = $comment->fetch())
    {
        ?>
        <p><strong><?= htmlspecialchars($data['author']); ?></strong> le <?= $data['comment_date_fr']; ?></p>

        <div class="news" >
            <p><?= nl2br(htmlspecialchars($data['comment'])); ?></p>
        </div>
    </div>
    <?php
    }
$comment->closeCursor(); ?>

<h2>Informations</h2>
<div class="commentaires">
    <div class="admin">
        <a class="nav-link" href="index.php?action=listPosts#episodes">
            <p>Vous avez actuellement <?= $postsTotal['total_posts']?> chapitres dans votre Blog.</p>
        </a>
    </div>
    <div class="admin">
        <a class="nav-link" href="index.php?action=adminListComments#com">
            <p>Vous avez actuellement <?= $commentsTotal['total_comments']?> commentaires dans votre Blog.</p>
        </a>
    </div>
    <div class="admin">
        <a class="nav-link" href="index.php?action=adminCommentsReport#reportcom">
            <p>Vous avez actuellement <?= $commentsReportTotal['total_comments_report']?> commentaire(s) signalé(s) sur votre Blog.</p>
        </a>
    </div>
</div>

<?php $content = ob_get_clean(); ?>

<?php require('views/home.php'); ?>