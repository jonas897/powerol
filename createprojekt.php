<?php include "header.php"?>

<div class="container">
<h1 class="pcenter">Create project</h1><br>

<h2 class="pcenter">Customer info</h2><br>
<div class="pcenter">
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#checkCustomer">
        Check customer
    </button>
</div><br>
<div class="pcenter">
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#checkCustomerInfo">
        Check customer info
    </button>
</div><br>
<div class="pcenter">
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#createCustomer">
        Create new customer
    </button>
</div><br>

<h2 class="pcenter">Car info</h2><br>

<div class="pcenter">
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#checkCar">
         Check car
    </button>
</div><br>
<div class="pcenter">
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#checkCarInfo">
        Check car info
    </button>
</div><br>
<div class="pcenter">
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#createCar">
        Create new car
    </button>
</div><br>


<div class="modal fade" id="checkCustomer" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Create customer</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">


        <form method="POST">
            <div class="form-group">
                <label for="customerName">Customer name</label>
                <input type="text" class="form-control" id="examplcustomerNameeInputEmail1" aria-describedby="emailHelp" placeholder="">
            </div>
            <button type="submit" class="btn btn-primary">Check</button>
        </form>


      </div>
      <div class=   "modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="createCustomer" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Create customer</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">

        <form method="POST">
            <div class="form-group">
                <label for="firstname">firstname</label>
                <input type="text" class="form-control" id="firstname" aria-describedby="firstnameHelp" placeholder="">
            </div>
            <div class="form-group">
                <label for="lastname">lastname</label>
                <input type="text" class="form-control" id="lastname" aria-describedby="lastnameHelp" placeholder="">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="text" class="form-control" id="email" aria-describedby="emailHelp" placeholder="">
            </div>
            <div class="form-group">
                <label for="phoneNumber">Phone number</label>
                <input type="text" class="form-control" id="phoneNumber" aria-describedby="phonenumberHelp" placeholder="">
            </div>
            <div class="form-group">
                <label for="adress">Adress</label>
                <input type="text" class="form-control" id="adress" aria-describedby="adressHelp" placeholder="">
            </div>
            <div class="form-group">
                <label for="postcode">Postcode</label>
                <input type="text" class="form-control" id="postcode" aria-describedby="postcodeHelp" placeholder="">
            </div>
            <div class="form-group">
                <label for="city">City</label>
                <input type="text" class="form-control" id="city" aria-describedby="cityHelp" placeholder="">
            </div>
            <button type="submit" class="btn btn-primary">Create</button>
        </form>


      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="checkCar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Create customer</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">


        <form method="POST">
            <div class="form-group">
                <label for="customerName">Customer name</label>
                <input type="text" class="form-control" id="examplcustomerNameeInputEmail1" aria-describedby="emailHelp" placeholder="">
            </div>
            <button type="submit" class="btn btn-primary">Check</button>
        </form>


      </div>
      <div class=   "modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
     

<div class="modal fade" id="createCar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Create customer</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">

        <form method="POST">
            <div class="form-group">
                <label for="brand">Brand</label>
                <input type="text" class="form-control" id="brand" aria-describedby="brandHelp" placeholder="">
            </div>
            <div class="form-group">
                <label for="model">Model</label>
                <input type="text" class="form-control" id="model" aria-describedby="modelHelp" placeholder="">
            </div>
            <div class="form-group">
                <label for="licensenumber">License number</label>
                <input type="text" class="form-control" id="licensenumber" aria-describedby="licensenumberHelp" placeholder="">
            </div>
            <button type="submit" class="btn btn-primary">Create</button>
        </form>


      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>