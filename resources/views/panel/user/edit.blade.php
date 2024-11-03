
@extends('panel.layouts.app')
@section('content')

    <div class="pagetitle">
      <h1>Edit New Role</h1>
    </div>

    <section class="section">
        <div class="row">
          <div class="col-lg-12">

            <div class="card">
              <div class="card-body">
                <h5 class="card-title">Edit New Role</h5>

                <!-- Add New Role -->
                <form method="post" action="{{ url('panel/user/edit/'.$getRecord->id) }}">
                    {{ csrf_field() }}
                  <div class="row mb-3">
                    <label for="name" class="col-sm-12 col-form-label">Name</label>
                    <div class="col-sm-12">
                      <input type="text" name="name" id="name" value="{{ $getRecord->name }}" class="form-control">
                    </div>
                  </div>
                  <div class="row mb-3">
                    <label for="email" class="col-sm-12 col-form-label">Email</label>
                    <div class="col-sm-12">
                      <input type="email" name="email" id="email" value="{{ $getRecord->email }}" class="form-control">
                    </div>
                  </div>
                  <div class="row mb-3">
                    <label for="password" class="col-sm-12 col-form-label">Password</label>
                    <div class="col-sm-12">
                      <input type="password" name="password" id="password" value="" class="form-control">
                            (Do you want to change password please add. Otherwise leave it.)
                    </div>
                  </div>

                  <div class="row mb-3">
                    <label for="role" class="col-sm-12 col-form-label">Role</label>
                    <div class="col-sm-12">
                     <select class="form-control" name="role_id" required>
                        <option value="">Select</option>
                        @foreach ($getRole as $value)
                        <option {{ ($getRecord->role_id == $value->id) ? 'selected' : '' }} value="{{ $value->id }}">{{ $value->name }}</option>
                        @endforeach

                     </select>
                    </div>
                  </div>

                  <div class="row mb-3">
                    <div class="col-sm-12" >
                      <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                  </div>

                </form><!-- End General Form Elements -->

              </div>
            </div>

          </div>
        </div>
      </section>


@endsection
