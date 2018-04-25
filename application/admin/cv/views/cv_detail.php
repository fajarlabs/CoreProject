<!DOCTYPE html>
<!--[if IE 7]><html class="no-js ie7 oldie" lang="en-US"> <![endif]-->
<!--[if IE 8]><html class="no-js ie8 oldie" lang="en-US"> <![endif]-->
<!--[if gt IE 8]><!-->
<html lang="en">
    
<head>
        <meta charset="utf-8">
        
        <!-- TITLE OF SITE-->
        <title>Curriculum Vitae - <?php echo  @$item->result()[0]->NAMA ?></title>

        <!-- FAVICON -->
        <link rel="icon" href="cv_assets/images/favicon.ico">
        <link rel="apple-touch-icon" sizes="72x72" href="<?php echo base_url() ?>assets/cv_assets/images/apple-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="76x76" href="<?php echo base_url() ?>assets/cv_assets/images/apple-icon-76x76.html">
        <link rel="apple-touch-icon" sizes="114x114" href="<?php echo base_url() ?>assets/cv_assets/images/apple-icon-114x114.png">

        <!-- ========================================
                Stylesheets
        ==========================================--> 
        
        <!-- MATERIALIZE CORE CSS -->
        <link href="<?php echo base_url() ?>assets/cv_assets/css/materialize.min.css" rel="stylesheet">
        

        <!-- ADDITIONAL CSS -->
        <link rel="stylesheet" href="<?php echo base_url() ?>assets/cv_assets/css/animate.css">
        

        <!-- FONTS -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,400italic,700italic' rel='stylesheet' type='text/css'>
        

        <!--FONTAWESOME CSS-->
        <link href="<?php echo base_url() ?>assets/cv_assets/icons/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"> 
        

        <!-- CUSTOM STYLE -->
        <link href="<?php echo base_url() ?>assets/cv_assets/css/style.css" rel="stylesheet">
        

        <!-- RESPONSIVE CSS-->
        <link href="<?php echo base_url() ?>assets/cv_assets/css/responsive.css" rel="stylesheet">

        <!-- COLORS -->        
        <link rel="alternate stylesheet" href="<?php echo base_url() ?>assets/cv_assets/css/colors/red.css" title="red">
        <link rel="alternate stylesheet" href="<?php echo base_url() ?>assets/cv_assets/css/colors/purple.css" title="purple">
        <link rel="alternate stylesheet" href="<?php echo base_url() ?>assets/cv_assets/css/colors/orange.css" title="orange">
        <link rel="alternate stylesheet" href="<?php echo base_url() ?>assets/cv_assets/css/colors/green.css" title="green">
        <link rel="stylesheet" href="<?php echo base_url() ?>assets/cv_assets/css/colors/lime.css" title="lime">

        
        <!-- STYLE SWITCH STYLESHEET ONLY FOR DEMO -->
        <link rel="stylesheet" href="<?php echo base_url() ?>assets/cv_assets/css/demo.css">
        
        <!--[if lt IE 9]><script src="cv_assets/js/ie8-responsive-file-warning.js"></script><![endif] -->
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
        
    </head>
    <body>
        <!-- Start Container-->
        <div class="container">
            <!-- row -->
            <div class="row">
            <!-- =========================================
                           SIDEBAR   
            ==========================================-->
                <!-- Start Sidebar -->
                <aside class="col l4 m12 s12 sidebar z-depth-1" id="sidebar">
                    <!--  Sidebar row -->
                    <div class="row">                      
                        <!--  top section   -->
                        <div class="heading">                            
                            <!-- ====================
                                      IMAGE   
                            ==========================-->
                            <div class="feature-img">
                                <img src="<?php echo base_url() ?>uploads/cv_files_photo/<?php echo @$item->result()[0]->PHOTO_FILE ?>" class="responsive-img" alt="">
                            </div>                            
                            <!-- =========================================
                                       NAVIGATION   
                            ==========================================-->
                                             
                            <!-- ========================================
                                       NAME AND TAGLINE
                            ==========================================-->
                            <div class="title col s12 m12 l9 right  wow fadeIn" data-wow-delay="0.1s">   
                               
                            </div>                         
                        </div>
                         <!-- sidebar info -->
                        <div class="col l12 m12 s12 sort-info sidebar-item">
                            <div class="row">                               
                                <div class="col m12 s12 l3 icon"> <!-- icon -->
                                   <i class="fa fa-user"></i>
                                </div>                                
                                <div class="col m12 s12 l9 info wow fadeIn a1" data-wow-delay="0.1s" > <!-- text -->
                                    <div class="section-item-details">
                                        <h2><?php echo  @$item->result()[0]->NAMA ?></h2> <!-- title name -->
                                        <span><?php echo  @$posisi->result()[0]->POSITION ?></span>  <br/>
                                        <span><?php echo  @$region->result()[0]->REGION ?></span>  <!-- tagline -->
                                    </div>             
                                </div>
                            </div>         
                        </div>
                        <!-- Birthdate -->
                        <div class="col l12 m12 s12  mobile sidebar-item">
                            <div class="row">                                
                                <div class="col m12 s12 l3 icon">
                                    <i class="fa fa-calendar-o"></i> <!-- icon -->
                                </div>                                
                                <div class="col m12 s12 l9 info wow fadeIn a2" data-wow-delay="0.2s" >
                                    <div class="section-item-details">
                                        <div class="personal">
                                         <h4><?php echo  @$item->result()[0]->PLACE_BIRTHDATE ?>, <?php echo  @$item->result()[0]->BIRTHDATE ?></h4>

                                         <h4><?php 
                                         if(@$item->result()[0]->GENDER=="L") echo "Laki-Laki"; 
                                         else echo "Perempuan"; 
                                         ?>
                                             
                                         </h4>
                                        </div>
                                    </div>
                                </div>
                            </div>             
                        </div>
                        <!-- MOBILE NUMBER -->
                        <div class="col l12 m12 s12  mobile sidebar-item">
                            <div class="row">                                
                                <div class="col m12 s12 l3 icon">
                                    <i class="fa fa-phone"></i> <!-- icon -->
                                </div>                                
                                <div class="col m12 s12 l9 info wow fadeIn a2" data-wow-delay="0.2s" >
                                    <div class="section-item-details">
                                        <div class="personal">
                                            <h4><a href="tel:<?php echo  @$item->result()[0]->CONTACT_1 ?>"><?php echo  @$item->result()[0]->CONTACT_1 ?></a></h4> <!-- Number -->   
                                        </div>
                                        <?php 
                                        if(@$item->result()[0]->CONTACT_2!=""){
                                        ?>
                                        <div class="work">
                                            <h4><a href="tel:<?php echo  @$item->result()[0]->CONTACT_2 ?>"><?php echo  @$item->result()[0]->CONTACT_2 ?></a></h4> <!-- Number -->
                                        </div>
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>             
                        </div>
                        <!--  EMAIL -->
                        <div class="col l12 m12 s12  email sidebar-item ">
                            <div class="row">                                
                                <div class="col m12 s12 l3 icon">
                                    <i class="fa fa-envelope"></i> <!-- icon -->
                                </div>                                
                                <div class="col m12 s12 l9 info wow fadeIn a3" data-wow-delay="0.3s">
                                    <div class="section-item-details">
                                        <div class="personal">                                    
                                            <h4><a href="mailto:<?php echo  @$item->result()[0]->EMAIL ?>"><?php echo  @$item->result()[0]->EMAIL ?></a></h4> <!-- Email -->
                                        </div>
                                    </div>
                                </div> 
                            </div>          
                        </div>
                        <!-- ADDRESS  -->
                        <div class="col l12 m12 s12  address sidebar-item ">
                            <div class="row">                                
                                <div class="col l3 m12  s12 icon">
                                    <i class="fa fa-home"></i> <!-- icon -->
                                </div>                                
                                <div class="col m12 s12 l9 info wow fadeIn a4" data-wow-delay="0.4s">
                                    <div class="section-item-details">
                                        <div class="address-details"> <!-- address  -->
                                            <h4><?php echo  @$item->result()[0]->ADDRESS ?></h4> 
                                        </div>                         
                                    </div>
                                </div>
                            </div>            
                        </div>
                        <!-- SKILLS -->
                        <div class="col l12 m12 s12  skills sidebar-item" >
                            <div class="row">
                                <div class="col m12 l3 s12 icon">
                                    <i class="fa fa-camera-retro"></i> <!-- icon -->
                                </div>
                                 <!-- Skills -->
                                <div class="col m12 l9 s12 skill-line a5 wow fadeIn">
                                    <h3>Experience</h3>
                                    <?php 
                                        $i=0;
                                        foreach ($exp_data as $key => $val ) {
                                           $ty = (explode("$",$val->EXP_TYPE));
                                    ?>
                                    <span><?php echo $ty[0]; ?></span>             
                                    
                                    <div class="progress">
                                        <?php 
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
                                    </div><br/>
                                    <?php $i++; } ?>
                                </div>
                            </div>
                        </div>
                    </div>   <!-- end row -->
                </aside><!-- end sidebar -->

                <!-- =========================================
                   Work experiences
                ==========================================-->

                <section class="col s12 m12 l8 section">
                    <div class="row">
                        <div class="section-wrapper z-depth-1">                            
                            <div class="section-icon col s12 m12 l2">
                                <i class="fa fa-suitcase"></i>
                            </div>
                            <div class="custom-content col s12 m12 l10 wow fadeIn a1" data-wow-delay="0.1s">
                                <h2>Work Experience</h2>

                                 <?php 
                                 foreach($cv_work as $work){ ?>   
                                <div class="custom-content-wrapper wow fadeIn a2" data-wow-delay="0.2s">
                                    <h3><?php echo $work->POSITION ?> - <span><?php echo $work->COMPANY_NAME ?></span></h3>
                                    <span><?php echo convert_date($work->FROM,"d/m/Y") ?> - <?php echo convert_date($work->END,"d/m/Y") ?></span>
                                    <p><?php echo $work->DESCRIPTION ?></p>
                                </div>
                                <?php } ?>
                            </div>                            
                        </div>

                        <!-- ========================================
                         Education 
                        ==========================================-->

                        <div class="section-wrapper z-depth-1">
                            <div class="section-icon col s12 m12 l2">
                                <i class="fa fa-graduation-cap"></i>
                            </div>
                            <div class="custom-content col s12 m12 l10 wow fadeIn a1" data-wow-delay="0.1s" >
                                <h2>Education </h2>
                                
                                <?php   
                                foreach ($edu_data as $key => $val ) {
                                     $ty = (explode("$$$",$val->EDUCATION_TYPE));
                                    ?>
                                <div class="custom-content-wrapper wow fadeIn a2" data-wow-delay="0.2s" >
                                    <h3><?php echo $ty[1] ?><br/>
                                        <span><?php echo $ty[0] ?></span>
                                    </h3>
                                </div>
                                  <?php } ?>   
                            </div>
                        </div>

                        <!-- ========================================
                         Certificate 
                        ==========================================-->

                        <div class="section-wrapper z-depth-1">
                            <div class="section-icon col s12 m12 l2">
                                <i class="fa fa-trophy"></i>
                            </div>
                            <div class="custom-content col s12 m12 l10 wow fadeIn a1" data-wow-delay="0.1s" >
                                <h2>Certificate </h2>
                                
                                <?php 
                                 foreach($cv_certificate as $cr){ ?>   
                                <div class="custom-content-wrapper wow fadeIn a2" data-wow-delay="0.2s" >
                                    <h3><?php echo $cr->CERTIFICATE_NAME ?> -  <span><?php echo $cr->CERITIFICATE_FROM ?></span>
                                    </h3><br/> Expired until : <?php echo convert_date($cr->CERITIFICATE_EXPIRED,"d/m/Y") ?> - <a style="color:blue" href="<?php echo base_url() ?>uploads/cv_files_certificate/<?php echo $cr->CERITIFICATE_FILE ?>" title="Download Certificate" download>Download</a>
                                </div>
                                 <?php } ?>
                            </div>
                        </div>

                        <!-- ========================================
                         Works Experiences 
                        ==========================================-->

                        <div class="section-wrapper z-depth-1">
                            <div class="section-icon col s12 m12 l2">
                                <i class="fa fa-trophy"></i>
                            </div>
                            <div class="custom-content col s12 m12 l10 wow fadeIn a1" data-wow-delay="0.1s" >
                                <h2>Work Experiences </h2>
                                
                                <?php 
                                 if(isset($work_experiences)) {
                                 foreach($work_experiences as $cr){ ?>   
                                <div class="custom-content-wrapper wow fadeIn a2" data-wow-delay="0.2s" >
                                    <h3><?php echo $cr->CERTIFICATE_NAME ?> -  <span><?php echo $cr->CERITIFICATE_FROM ?></span>
                                    </h3><br/> Expired until : <?php echo convert_date($cr->CERITIFICATE_EXPIRED,"d/m/Y") ?> - <a style="color:blue" href="<?php echo base_url() ?>uploads/cv_files_certificate/<?php echo $cr->CERITIFICATE_FILE ?>" title="Download Certificate" download>Download</a>
                                </div>
                                 <?php } }?>
                            </div>
                        </div>

                    </div><!-- end row -->
                </section><!-- end section -->
            </div> <!-- end row -->
        </div>  <!-- end container -->
        
 <!--=====================
                JavaScript
        ===================== -->
        <!-- Jquery core js-->
        <script src="<?php echo base_url() ?>assets/cv_assets/js/jquery.min.js"></script>
        
        <!-- materialize js-->
        <script src="<?php echo base_url() ?>assets/cv_assets/js/materialize.min.js"></script>
        
        <!-- wow js-->
        <script src="<?php echo base_url() ?>assets/cv_assets/js/wow.min.js"></script>
        
   
        <!-- Masonry js-->
        <script src="<?php echo base_url() ?>assets/cv_assets/js/masonry.pkgd.js"></script>

        <script src="<?php echo base_url() ?>assets/cv_assets/js/validator.min.js"></script>
        
        <!-- Customized js -->
        <script src="<?php echo base_url() ?>assets/cv_assets/js/init.js"></script>
    
      
    </body>

</html>
