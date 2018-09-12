{ lib
, name ? ""
, address ? ""
, status ? ""
, description ? ""
, ...}:

let
  labelFor = s: {
    "alpha"          = "warning";
    "beta"           = "warning";
    "production"     = "success";
    "deprecated"     = "error";
    "obsolete"       = "error";
    ""               = "";
  }.${s};
in

''
  <tr>
  <td>
    <a class="float-left text-bold entry-address" href="${address}">${name}</a>
    <a class="show-sm btn btn-primary float-right mx-2" href="#${lib.toLower name}">Info</a>
    <div id="${lib.toLower name}" class="modal modal-lg">
      <a class="modal-overlay" href="#" aria-labels="Close"></a>
      <div class="modal-container" role="document">
        <div class="modal-header">
          <a class="btn btn-clear float-right" href="#" aria-label="Close">
          </a>
          <div class="modal-title text-bold h4">${name}</div>
          <div class="float-left mt-1">
            <span class="label label-${labelFor status}">
              ${status}
            </span>
          </div>
        </div>
        <div class="modal-body">
          <div class="content">
            ${description}
            <a href="${address}">${address}</a>
          </div>
        </div>
        <div class="modal-footer">
          <a class="btn btn-primary" href="#" aria-label="Close">Close</a>
        </div>
      </div>
    </div>
  </td>
  <td class="hide-sm">
    <a href="${address}">${address}</a>
  </td>
  <td class="hide-sm">${description}</td>
  <td class="hide-sm">
    <span class="label label-${labelFor status}">
      ${status}
    </span>
  </td>
  </tr>
''
