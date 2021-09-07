# WickedPDF Global Configuration
#
# Use this to set up shared configuration options for your entire application.
# Any of the configuration options shown here can also be applied to single
# models by passing arguments to the `render :pdf` call.
#
# To learn more, check out the README:
#
# https://github.com/mileszs/wicked_pdf/blob/master/README.md

WickedPdf.config = {
  # Path to the wkhtmltopdf executable: This usually isn't needed if using
  # one of the wkhtmltopdf-binary family of gems.
  # exe_path: '/usr/local/bin/wkhtmltopdf',
  #   or
  # exe_path: Gem.bin_path('wkhtmltopdf-binary', 'wkhtmltopdf')
  # enable_local_file_access: true
  # Layout file to be used for all PDFs
  # (but can be overridden in `render :pdf` calls)
  # layout: 'pdf.html',

  # Using wkhtmltopdf without an X server can be achieved by enabling the
  # 'use_xvfb' flag. This will wrap all wkhtmltopdf commands around the
  # 'xvfb-run' command, in order to simulate an X server.
  #
  # use_xvfb: true,
}
# if Rails.env.production?  wkhtmltopdf_path = "#{Rails.root}/bin/wkhtmltopdf-amd64"
# else  
#   # Linux (check your processor for Intel x86 or AMD x64)  
#   # wkhtmltopdf_path = "#{Rails.root}/bin/wkhtmltopdf-amd64"  
#   # wkhtmltopdf_path = "#{Rails.root}/bin/wkhtmltopdf-i386"  
#   OS X  wkhtmltopdf_path = "#{Rails.root}/bin/wkhtmltopdf-0.9.9-OS-X.i386"              
#   # Windows  # wkhtmltopdf_path = 'C:\Program Files/wkhtmltopdf/wkhtmltopdf.exe'
# end
# WickedPdf.config = { exe_path: wkhtmltopdf_path, wkhtmltopdf: wkhtmltopdf_path }
