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
</div>
</div>


<div class="modal fade" id="checkCustomer" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Create customer</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form>
            <div class="form-group">
                <label for="customerName">Customer name</label>
                <input type="text" class="form-control" id="examplcustomerNameeInputEmail1" aria-describedby="emailHelp" placeholder="">
            </div>
            <button type="submit" class="btn btn-primary">Check</button>
        </form>
      </div>
      <div class=   "modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save</button>
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
        <form>
            <div class="form-group">
                <label for="customerName">Customer name</label>
                <input type="text" class="form-control" id="customerName" aria-describedby="emailHelp" placeholder="">
            </div>
            <div class="form-group">
                <label for="customerPhoneNumber">Customer phone number</label>
                <input type="text" class="form-control" id="customerPhoneNumber" aria-describedby="emailHelp" placeholder="">
            </div>
            <button type="submit" class="btn btn-primary">Create</button>
        </form>
      </div>
      <div class=   "modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save</button>
      </div>
    </div>
  </div>
</div>