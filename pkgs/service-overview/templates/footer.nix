{ lib, extraHtml ? "" }:

lib.optionalString (extraHtml != "") extraHtml + ''
  </tbody>
  </table>
  </div>
  </div>
  </body>
  </html>
''
