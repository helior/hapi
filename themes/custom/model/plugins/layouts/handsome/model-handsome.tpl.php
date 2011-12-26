<div class="handsome">
  <div class="container">
    
    <?php if ($content['top']): ?>
    <div class="top">
      <?php print $content['top']; ?>
    </div>
    <?php endif; ?>
    
    <?php if ($content['left'] || $content['content']): ?>
    <div class="main">

      <?php if ($content['content']): ?>
      <div class="content twelve columns alpha">
        <div class="inner">
          <?php print $content['content']; ?>
        </div>
      </div>
      <?php endif; ?>

      <?php if ($content['left']): ?>
      <div class="sidebar-left four columns">
        <span class="sidebar-top"></span>
        <span class="sidebar-bottom"></span>
        <div class="inner">
          <?php print $content['left']; ?>
        </div>
      </div>
      <?php endif; ?>

    </div>
    <?php endif; ?>
    
    <?php if ($content['bottom']): ?>
    <div class="bottom">
      <?php print $content['bottom']; ?>
    </div>
    <?php endif; ?>
    
  </div>
</div>