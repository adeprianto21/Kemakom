<!DOCTYPE html>
<html lang="en">
<?php $this->load->view('layout/head');?>
<body>
    <div class="scroll"></div>
    <?php $this->load->view('layout/nav2');?>
    <section id="leader">
        <div class="container">
            <div class="division-headline">
                Nama Divisi
            </div>
            <div class="row">
                <div class="col-md-6 mb-5">
                    <div class="row mb-5">
                        <div class="col-md-10 mx-auto">
                            <div class="card profile-card">
                                <div class="row w-100 h-100 m-0">
                                    <img class="profile-image" src="assets/img/profile.jpg"></img>
                                    <div class="profile-body">
                                        <div class="profile-name">Purnama Muntaharridwan</div>
                                        <div class="profile-role">Ketua BEM Kemakom</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mb-5">
                    <div class="row mb-5">
                        <div class="col-md-10 mx-auto">
                            <div class="card profile-card">
                                <div class="row w-100 h-100 m-0">
                                    <img class="profile-image" src="assets/img/profile.jpg"></img>
                                    <div class="profile-body">
                                        <div class="profile-name">Rizal Purnomo Putra Perdana</div>
                                        <div class="profile-role">Wakil Ketua BEM Kemakom</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<?php $this->load->view('layout/footer');?>
</body>

<script src="<?php echo base_url().'assets/fr/js/jquery-3.4.1.min.js'?>"></script>
<script src="<?php echo base_url().'assets/fr/js/bootstrap.min.js'?>"></script>
<script src="<?php echo base_url().'assets/fr/js/kemakom.js'?>"></script>

</html>