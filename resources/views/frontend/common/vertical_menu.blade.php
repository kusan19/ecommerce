@php
    $categories = App\Models\Category::orderBy('category_name','ASC')->get();
@endphp

<div class="side-menu animate-dropdown outer-bottom-xs">
    <div class="head"><i class="icon fa fa-align-justify fa-fw"></i> Categories</div>
    <nav class="yamm megamenu-horizontal">
      <ul class="nav">

        @foreach ($categories as $category)

        <li class="dropdown menu-item"> <a href="#" class="dropdown-toggle"
            data-toggle="dropdown"><i class="icon {{ $category->category_icon }}"
            aria-hidden="true"></i>
@if(session()->get('language') == 'language')  {{ $category->category_name }} @else {{ $category->category_name }} @endif
            </a>
          <ul class="dropdown-menu mega-menu">
            <li class="yamm-content">
              <div class="row">

{{-- // get subcategory table data --}}
@php
$subcategories = App\Models\SubCategory::where('category_id',$category->id)->orderBy('subcategory_name','ASC')->get();
@endphp

          @foreach ($subcategories as $subcategory)
                <div class="col-sm-12 col-md-3">

    <a href="{{ url('subcategory/product/'.$subcategory->id.'/'.$subcategory->subcategory_slug) }}">

  <h2 class="title">
  @if(session()->get('language') == 'language') {{ $subcategory->subcategory_name }} @else {{ $subcategory->subcategory_name }} @endif
   </h2> </a>

{{-- // get subsubcategory table data --}}
@php
$subsubcategories = App\Models\SubSubCategory::where('subcategory_id',$subcategory->id)->orderBy('subsubcategory_name','ASC')->get();
@endphp

@foreach ($subsubcategories as $subsubcategory)
                  <ul class="links list-unstyled">
       <li><a href="{{ url('subsubcategory/product/'.$subsubcategory->id.'/'.$subsubcategory->subsubcategory_slug) }}">

@if(session()->get('language') == 'language') {{ $subsubcategory->subsubcategory_name }} @else {{ $subsubcategory->subsubcategory_name }} @endif
                    </a></li>

                  </ul>
                  @endforeach  {{-- // end subcategory foreach --}}

                </div>
                <!-- /.col -->
       @endforeach
        {{--  // end subcategory foreach  --}}
              </div>
              <!-- /.row -->
            </li>
            <!-- /.yamm-content -->
          </ul>
          <!-- /.dropdown-menu --> </li>
        <!-- /.menu-item -->
        @endforeach
        {{--  // end category foreach  --}}




      </ul>
      <!-- /.nav -->
    </nav>
    <!-- /.megamenu-horizontal -->
  </div>
  <!-- /.side-menu -->
