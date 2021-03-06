
ini <- MetabolomiQCsR.env$general$settings_file %>% read.ini



#### Read ini file data into environment

MetabolomiQCsR.env$module_Files$include_ext                       <- ini$module_Files$include_ext %>% as.character
MetabolomiQCsR.env$module_Files$include_path                      <- ini$module_Files$include_path %>% as.character
MetabolomiQCsR.env$module_Files$exclude_path                      <- ini$module_Files$exclude_path %>% as.character
MetabolomiQCsR.env$module_Files$files_from_txt                    <- ini$module_Files$files_from_txt %>% as.logical
MetabolomiQCsR.env$module_Files$files_txt_path                    <- ini$module_Files$files_txt_path %>% as.character

# cleanup
rm(ini)
