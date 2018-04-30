<!DOCTYPE html>
<html>
  <head>
    <!-- TITLE OF SITE-->
    <title>Curriculum Vitae - <?php echo  @$item->result()[0]->NAMA ?></title>
    <meta charset="utf-8" />
    <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/cv_assets_print/dep/normalize.css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/cv_assets_print/dep/Font-Awesome/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/cv_assets_print/style.css" />
    <script src="<?php echo base_url() ?>assets/admin/plugins/jsPDF/dist/jquery-3.3.1.min.js" type="text/javascript"></script>
  </head>
  <style>
   @media print {
         #no_print {display: none;}
   }
  </style>
  <body lang="en">
    <p id="no_print" align="left">
        <a onclick="window.print();" style="color:blue;cursor:pointer">Print</a> | <a onclick="printMe()"  style="color:blue;cursor:pointer">Download</a>
    </p>
    <section id="main">
      <header id="title">
        <h1><?php echo  @$item->result()[0]->NAMA ?></h1>
        <span class="subtitle"><?php echo  @$posisi->result()[0]->POSITION ?></span>
      </header>
      <section class="main-block">
        <h2>
          <i class="fa fa-suitcase"></i> Experiences
        </h2>
        <?php foreach($cv_work as $work){ ?>  
        <section class="blocks">
          <div class="date">
            <span><?php echo convert_date($work->FROM,"m/Y") ?></span><span><?php echo convert_date($work->END,"m/Y") ?></span>
          </div>
          <div class="decorator">
          </div>
          <div class="details">
            <header>
              <h3><?php echo $work->POSITION ?></h3>
              <span class="place"><?php echo $work->COMPANY_NAME ?></span>
            </header>
            <div>
              <ul>
                <li><?php echo $work->DESCRIPTION ?></li>
              </ul>
              </div>
          </div>
        </section>
         <?php } ?>
      </section>
      <section class="main-block">
        <h2>
          <i class="fa fa-folder-open"></i> List Job History
        </h2>
         <?php 
                $ix=1;
                 foreach($list_history_work as $wr){ ?>   
        <section class="blocks">
          <div class="date">
            <!--<span>2015</span><span>2016</span>-->
          </div>
          <div class="decorator">
          </div>
          <div class="details">
            <header>
              <h3><?php echo $ix ?>. File Order : <?php echo $wr->FILE_ORDER ?></h3>
              <h4>IWO : <?php echo $wr->IWO ?></h4>
              <h4>AREA : <?php echo $wr->AREA ?></h4>
              <span class="place"></span>
            </header>
            <div>
                <?php 
                     $arr_prod=json_decode($wr->PRODUCT);
                          if (is_array($arr_prod) || is_object($arr_prod)) {
                              $take='';
                              foreach($arr_prod as $key => $value){
                                 $take .= $value.', ';
                                }
                                echo rtrim($take,', ');
                          } else {
                                echo $wr->PRODUCT;
                          } 
                    ?>
            </div>
          </div>
        </section>
         <?php $ix++; } ?>
      </section>
      <section class="main-block concise">
        <h2>
          <i class="fa fa-graduation-cap"></i> Education
        </h2>
        <?php   
            foreach ($edu_data as $key => $val ) {
                 $ty = (explode("$$$",$val->EDUCATION_TYPE));
                ?>
        <section class="blocks">
          <div class="date">
            <!--<span>2009</span><span>2014</span>-->
          </div>
          <div class="decorator">
          </div>
          <div class="details">
            <header>
              <h3><?php echo $ty[1] ?></h3>
              <span class="place"><?php echo $ty[0] ?></span>
            </header>
            
          </div>
        </section>
          <?php } ?>   
      </section>
    </section>
    <aside id="sidebar">
      <div class="side-block" id="contact">
        <h1>
          Personal Data
        </h1>
        <ul>
          <li><?php if(@$item->result()[0]->GENDER=="L") echo "<i class='fa fa-male'></i> Laki-Laki"; 
                    else echo "<i class='fa fa-female'></i> Perempuan"; 
             ?>    
           </li>
           <li><i class="fa fa-calendar"></i> <?php echo  @$item->result()[0]->PLACE_BIRTHDATE ?>, <?php echo  @$item->result()[0]->BIRTHDATE ?>
          <li><i class="fa fa-home"></i> <?php echo  @$item->result()[0]->ADDRESS ?><li>
          <li>
        </ul>
        <center><img style="width:80%" src="<?php echo base_url() ?>uploads/cv_files_photo/<?php echo @$item->result()[0]->PHOTO_FILE ?>" class="responsive-img" alt=""></center>
      </div> 
      <div class="side-block" id="contact">
        <h1>
          Contact Info
        </h1>
        <ul>
          <li><i class="fa fa-phone"></i> <?php echo  @$item->result()[0]->CONTACT_1 ?></li>  
          <?php 
            if(@$item->result()[0]->CONTACT_2!=""){
           ?>
          <li><i class="fa fa-phone"></i> <?php echo  @$item->result()[0]->CONTACT_2 ?></li>  
          <?php } ?>
          <li><i class="fa fa-envelope"></i> <?php echo  @$item->result()[0]->EMAIL ?></li>
        </ul>
      </div>
      <div class="side-block" id="skills">
        <h1>
          Experience
        </h1>
         <?php 
            $i=0;
            foreach ($exp_data as $key => $val ) {
               $ty = (explode("$",$val->EXP_TYPE));
        ?>
        <ul>  
            <li><span style="font-weight:bold;font-size:11px"><?php echo $ty[0]; ?></span></li>
            <li><?php 
                    if($ty[1]=="1"){
                        echo "Beginner";
                    }
                    else if($ty[1]=="2"){
                        echo "Intermediate";
                    }
                    else if($ty[1]=="3"){
                        echo "Advanced";
                    }
             ?>
            </li>
        </ul>
         <?php $i++; } ?>
      </div>
    </aside>
  </body>
</html>

<script type="text/javascript">
    function printMe() {
         $("#no_print").hide();
         var send_param = $("#main").html();
         var form = document.createElement("form");
            form.setAttribute("method", "POST");
            form.setAttribute("action", "<?php echo base_url() ?>assets/cv_assets_print/generatePDF.php?nama_cv=Curriculum Vitae - <?php echo  @$item->result()[0]->NAMA ?>");

                    var hiddenField = document.createElement("input");
                    hiddenField.setAttribute("type", "hidden");
                    hiddenField.setAttribute("name", "link");
                    hiddenField.setAttribute("value", send_param);

                    form.appendChild(hiddenField);

            document.body.appendChild(form);
            form.submit();
            $("#no_print").show();
    }
</script>
