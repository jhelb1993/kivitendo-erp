# This file has been auto-generated. Do not modify it; it will be overwritten
# by rose_auto_create_model.pl automatically.
package SL::DB::Default;

use strict;

use parent qw(SL::DB::Object);

__PACKAGE__->meta->table('defaults');

__PACKAGE__->meta->columns(
  accounting_method                         => { type => 'text' },
  address_city                              => { type => 'text' },
  address_country                           => { type => 'text' },
  address_street1                           => { type => 'text' },
  address_street2                           => { type => 'text' },
  address_zipcode                           => { type => 'text' },
  advance_payment_clearing_chart_id         => { type => 'integer' },
  advance_payment_taxable_19_id             => { type => 'integer' },
  advance_payment_taxable_7_id              => { type => 'integer' },
  allow_new_purchase_delivery_order         => { type => 'boolean', default => 'true', not_null => 1 },
  allow_new_purchase_invoice                => { type => 'boolean', default => 'true', not_null => 1 },
  allow_sales_invoice_from_sales_order      => { type => 'boolean', default => 'true', not_null => 1 },
  allow_sales_invoice_from_sales_quotation  => { type => 'boolean', default => 'true', not_null => 1 },
  allowed_documents_with_no_positions       => { type => 'array' },
  always_record_links_from_order            => { type => 'boolean', default => 'false' },
  ap_add_doc                                => { type => 'boolean', default => 'false', not_null => 1 },
  ap_changeable                             => { type => 'integer', default => 2, not_null => 1 },
  ap_chart_id                               => { type => 'integer', not_null => 1 },
  ap_show_mark_as_paid                      => { type => 'boolean', default => 'true' },
  ar_add_doc                                => { type => 'boolean', default => 'false', not_null => 1 },
  ar_changeable                             => { type => 'integer', default => 2, not_null => 1 },
  ar_chart_id                               => { type => 'integer', not_null => 1 },
  ar_paid_accno_id                          => { type => 'integer' },
  ar_show_mark_as_paid                      => { type => 'boolean', default => 'true' },
  articlenumber                             => { type => 'text' },
  assemblynumber                            => { type => 'text' },
  assortmentnumber                          => { type => 'text' },
  balance_startdate_method                  => { type => 'text' },
  bcc_to_login                              => { type => 'boolean', default => 'false', not_null => 1 },
  bin_id                                    => { type => 'integer' },
  bin_id_ignore_onhand                      => { type => 'integer' },
  businessnumber                            => { type => 'text' },
  carry_over_account_chart_id               => { type => 'integer' },
  check_bt_duplicates_endtoend              => { type => 'boolean', default => 'false' },
  closedto                                  => { type => 'date' },
  cnnumber                                  => { type => 'text' },
  co_ustid                                  => { type => 'text' },
  coa                                       => { type => 'text' },
  company                                   => { type => 'text' },
  contact_departments_use_textfield         => { type => 'boolean' },
  contact_titles_use_textfield              => { type => 'boolean' },
  create_part_if_not_found                  => { type => 'boolean', default => 'false' },
  create_qrbill_invoices                    => { type => 'integer' },
  create_zugferd_invoices                   => { type => 'integer' },
  currency_id                               => { type => 'integer', not_null => 1 },
  customer_hourly_rate                      => { type => 'numeric', precision => 8, scale => 2 },
  customer_projects_only_in_sales           => { type => 'boolean', default => 'false', not_null => 1 },
  customer_ustid_taxnummer_unique           => { type => 'boolean', default => 'false' },
  customernumber                            => { type => 'text' },
  datev_check_on_ap_transaction             => { type => 'boolean', default => 'true' },
  datev_check_on_ar_transaction             => { type => 'boolean', default => 'true' },
  datev_check_on_gl_transaction             => { type => 'boolean', default => 'true' },
  datev_check_on_purchase_invoice           => { type => 'boolean', default => 'true' },
  datev_check_on_sales_invoice              => { type => 'boolean', default => 'true' },
  datev_export_format                       => { type => 'enum', check_in => [ 'cp1252', 'cp1252-translit', 'utf-8' ], db_type => 'datev_export_format_enum', default => 'cp1252-translit' },
  delivery_date_interval                    => { type => 'integer', default => '0' },
  deliverydate_on                           => { type => 'boolean', default => 'true' },
  disabled_price_sources                    => { type => 'array' },
  doc_delete_printfiles                     => { type => 'boolean', default => 'false' },
  doc_files                                 => { type => 'boolean', default => 'false' },
  doc_files_rootpath                        => { type => 'text', default => './documents' },
  doc_max_filesize                          => { type => 'integer', default => 10000000 },
  doc_storage                               => { type => 'boolean', default => 'false' },
  doc_storage_for_attachments               => { type => 'text', default => 'Filesystem' },
  doc_storage_for_documents                 => { type => 'text', default => 'Filesystem' },
  doc_storage_for_images                    => { type => 'text', default => 'Filesystem' },
  doc_storage_for_shopimages                => { type => 'text', default => 'Filesystem' },
  doc_webdav                                => { type => 'boolean', default => 'false' },
  dunning_ar                                => { type => 'integer' },
  dunning_ar_amount_fee                     => { type => 'integer' },
  dunning_ar_amount_interest                => { type => 'integer' },
  dunning_creator                           => { type => 'enum', check_in => [ 'current_employee', 'invoice_employee' ], db_type => 'dunning_creator', default => 'current_employee' },
  dunning_original_invoice_creation_mode    => { type => 'enum', check_in => [ 'create_new', 'use_last_created_or_create_new' ], db_type => 'invoice_creation_mode', default => 'create_new' },
  duns                                      => { type => 'text' },
  email_attachment_part_files_checked       => { type => 'boolean', default => 'true' },
  email_attachment_record_files_checked     => { type => 'boolean', default => 'true' },
  email_attachment_vc_files_checked         => { type => 'boolean', default => 'true' },
  email_journal                             => { type => 'integer', default => 2 },
  email_sender_dunning                      => { type => 'text', default => '' },
  email_sender_invoice                      => { type => 'text', default => '' },
  email_sender_letter                       => { type => 'text', default => '' },
  email_sender_purchase_delivery_order      => { type => 'text', default => '' },
  email_sender_purchase_invoice             => { type => 'text', default => '' },
  email_sender_purchase_order               => { type => 'text', default => '' },
  email_sender_request_quotation            => { type => 'text', default => '' },
  email_sender_sales_delivery_order         => { type => 'text', default => '' },
  email_sender_sales_order                  => { type => 'text', default => '' },
  email_sender_sales_quotation              => { type => 'text', default => '' },
  email_subject_transaction_description     => { type => 'boolean', default => 'false' },
  expense_accno_id                          => { type => 'integer' },
  fa_bufa_nr                                => { type => 'text' },
  fa_dauerfrist                             => { type => 'text' },
  fa_steuerberater_city                     => { type => 'text' },
  fa_steuerberater_name                     => { type => 'text' },
  fa_steuerberater_street                   => { type => 'text' },
  fa_steuerberater_tel                      => { type => 'text' },
  fa_voranmeld                              => { type => 'text' },
  feature_balance                           => { type => 'boolean', default => 'true', not_null => 1 },
  feature_datev                             => { type => 'boolean', default => 'true', not_null => 1 },
  feature_erfolgsrechnung                   => { type => 'boolean', default => 'false', not_null => 1 },
  feature_eurechnung                        => { type => 'boolean', default => 'true', not_null => 1 },
  feature_ustva                             => { type => 'boolean', default => 'true', not_null => 1 },
  fuzzy_skonto                              => { type => 'boolean', default => 'true' },
  fuzzy_skonto_percentage                   => { type => 'float', default => '0.5', precision => 4, scale => 4 },
  fxgain_accno_id                           => { type => 'integer' },
  fxloss_accno_id                           => { type => 'integer' },
  gl_add_doc                                => { type => 'boolean', default => 'false', not_null => 1 },
  gl_changeable                             => { type => 'integer', default => 2, not_null => 1 },
  gln                                       => { type => 'text' },
  global_bcc                                => { type => 'text', default => '' },
  id                                        => { type => 'serial', not_null => 1 },
  income_accno_id                           => { type => 'integer' },
  inventory_accno_id                        => { type => 'integer' },
  inventory_system                          => { type => 'text' },
  invnumber                                 => { type => 'text' },
  invoice_mail_settings                     => { type => 'enum', check_in => [ 'cp', 'invoice_mail', 'invoice_mail_cc_cp' ], db_type => 'invoice_mail_settings', default => 'cp' },
  ir_add_doc                                => { type => 'boolean', default => 'false', not_null => 1 },
  ir_changeable                             => { type => 'integer', default => 2, not_null => 1 },
  ir_show_mark_as_paid                      => { type => 'boolean', default => 'true' },
  is_changeable                             => { type => 'integer', default => 2, not_null => 1 },
  is_show_mark_as_paid                      => { type => 'boolean', default => 'true' },
  is_transfer_out                           => { type => 'boolean', default => 'false', not_null => 1 },
  itime                                     => { type => 'timestamp', default => 'now()' },
  language_id                               => { type => 'integer' },
  layout_style                              => { type => 'text' },
  letternumber                              => { type => 'integer' },
  lock_oe_subversions                       => { type => 'boolean', default => 'false', not_null => 1 },
  loss_carried_forward_chart_id             => { type => 'integer' },
  max_future_booking_interval               => { type => 'integer', default => 360 },
  mtime                                     => { type => 'timestamp' },
  no_bank_proposals                         => { type => 'boolean', default => 'false' },
  normalize_part_descriptions               => { type => 'boolean', default => 'true' },
  normalize_vc_names                        => { type => 'boolean', default => 'true' },
  order_always_project                      => { type => 'boolean', default => 'false' },
  order_item_input_position                 => { type => 'integer', default => '0', not_null => 1 },
  order_warn_duplicate_parts                => { type => 'boolean', default => 'true' },
  order_warn_no_cusordnumber                => { type => 'boolean', default => 'false' },
  order_warn_no_deliverydate                => { type => 'boolean', default => 'true' },
  p_reclamation_record_number               => { type => 'text', default => '0', not_null => 1 },
  parts_image_css                           => { type => 'text', default => 'border:0;float:left;max-width:250px;margin-top:20px:margin-right:10px;margin-left:10px;' },
  parts_listing_image                       => { type => 'boolean', default => 'true' },
  parts_show_image                          => { type => 'boolean', default => 'true' },
  partsgroup_required                       => { type => 'boolean', default => 'false', not_null => 1 },
  payments_changeable                       => { type => 'integer', default => '0', not_null => 1 },
  pdonumber                                 => { type => 'text' },
  pocnumber                                 => { type => 'text' },
  ponumber                                  => { type => 'text' },
  pqinumber                                 => { type => 'text' },
  precision                                 => { type => 'numeric', default => '0.01', not_null => 1, precision => 15, scale => 5 },
  print_interpolate_variables_in_positions  => { type => 'boolean', default => 'true', not_null => 1 },
  produce_assembly_same_warehouse           => { type => 'boolean', default => 'true' },
  produce_assembly_transfer_service         => { type => 'boolean', default => 'false' },
  profit_carried_forward_chart_id           => { type => 'integer' },
  profit_determination                      => { type => 'text' },
  project_status_id                         => { type => 'integer' },
  project_type_id                           => { type => 'integer' },
  purchase_delivery_order_check_service     => { type => 'boolean', default => 'true' },
  purchase_delivery_order_check_stocked     => { type => 'boolean', default => 'false' },
  purchase_delivery_order_show_delete       => { type => 'boolean', default => 'true' },
  purchase_order_show_delete                => { type => 'boolean', default => 'true' },
  purchase_reclamation_show_delete          => { type => 'boolean', default => 'true', not_null => 1 },
  qrbill_copy_invnumber                     => { type => 'boolean', default => 'false' },
  quick_search_modules                      => { type => 'array' },
  rdonumber                                 => { type => 'text' },
  reclamation_warn_duplicate_parts          => { type => 'boolean', default => 'true', not_null => 1 },
  reclamation_warn_no_reqdate               => { type => 'boolean', default => 'true', not_null => 1 },
  record_links_from_order_with_myself       => { type => 'boolean', default => 'false' },
  record_links_from_order_with_quotations   => { type => 'boolean', default => 'false' },
  reqdate_interval                          => { type => 'integer', default => '0' },
  reqdate_on                                => { type => 'boolean', default => 'true' },
  require_transaction_description_ps        => { type => 'boolean', default => 'false', not_null => 1 },
  requirement_spec_section_order_part_id    => { type => 'integer' },
  revtrans                                  => { type => 'boolean', default => 'false' },
  rfqnumber                                 => { type => 'text' },
  rmanumber                                 => { type => 'text' },
  rndgain_accno_id                          => { type => 'integer' },
  rndloss_accno_id                          => { type => 'integer' },
  s_reclamation_record_number               => { type => 'text', default => '0', not_null => 1 },
  sales_delivery_order_check_service        => { type => 'boolean', default => 'true' },
  sales_delivery_order_check_stocked        => { type => 'boolean', default => 'false' },
  sales_delivery_order_show_delete          => { type => 'boolean', default => 'true' },
  sales_order_show_delete                   => { type => 'boolean', default => 'true' },
  sales_purchase_order_ship_missing_column  => { type => 'boolean', default => 'false' },
  sales_purchase_record_numbers_changeable  => { type => 'boolean', default => 'false', not_null => 1 },
  sales_reclamation_show_delete             => { type => 'boolean', default => 'true', not_null => 1 },
  sales_serial_eq_charge                    => { type => 'boolean', default => 'false', not_null => 1 },
  sdonumber                                 => { type => 'text' },
  sepa_creditor_id                          => { type => 'text' },
  sepa_export_xml                           => { type => 'boolean', default => 'true' },
  sepa_reference_add_vc_vc_id               => { type => 'boolean', default => 'false' },
  sepa_set_duedate_as_default_exec_date     => { type => 'boolean', default => 'false' },
  sepa_set_skonto_date_as_default_exec_date => { type => 'boolean', default => 'false' },
  sepa_set_skonto_date_buffer_in_days       => { type => 'integer', default => '0' },
  servicenumber                             => { type => 'text' },
  shipped_qty_require_stock_out             => { type => 'boolean', default => 'false', not_null => 1 },
  show_bestbefore                           => { type => 'boolean', default => 'false' },
  show_invoice_for_advance_payment          => { type => 'boolean', default => 'true', not_null => 1 },
  show_longdescription_select_item          => { type => 'boolean', default => 'false' },
  show_purchase_order_confirmation          => { type => 'boolean', default => 'true', not_null => 1 },
  show_purchase_quotation_intake            => { type => 'boolean', default => 'true', not_null => 1 },
  show_purchase_reclamation                 => { type => 'boolean', default => 'true', not_null => 1 },
  show_sales_order_intake                   => { type => 'boolean', default => 'true', not_null => 1 },
  show_sales_reclamation                    => { type => 'boolean', default => 'true', not_null => 1 },
  show_weight                               => { type => 'boolean', default => 'false', not_null => 1 },
  signature                                 => { type => 'text' },
  soinumber                                 => { type => 'text' },
  sonumber                                  => { type => 'text' },
  sqnumber                                  => { type => 'text' },
  stocktaking_bin_id                        => { type => 'integer' },
  stocktaking_cutoff_date                   => { type => 'date' },
  stocktaking_qty_threshold                 => { type => 'numeric', default => '0', precision => 25, scale => 5 },
  stocktaking_warehouse_id                  => { type => 'integer' },
  sudonumber                                => { type => 'text' },
  taxnumber                                 => { type => 'text' },
  templates                                 => { type => 'text' },
  transfer_default                          => { type => 'boolean', default => 'true' },
  transfer_default_ignore_onhand            => { type => 'boolean', default => 'false' },
  transfer_default_services                 => { type => 'boolean', default => 'true' },
  transfer_default_use_master_default_bin   => { type => 'boolean', default => 'false' },
  transit_items_chart_id                    => { type => 'integer' },
  transport_cost_reminder_article_number_id => { type => 'integer' },
  undo_transfer_interval                    => { type => 'integer', default => 7 },
  vc_greetings_use_textfield                => { type => 'boolean' },
  vendor_ustid_taxnummer_unique             => { type => 'boolean', default => 'false' },
  vendornumber                              => { type => 'text' },
  version                                   => { type => 'varchar', length => 8 },
  vertreter                                 => { type => 'boolean', default => 'false' },
  warehouse_id                              => { type => 'integer' },
  warehouse_id_ignore_onhand                => { type => 'integer' },
  warn_no_delivery_order_for_invoice        => { type => 'boolean', default => 'false' },
  webdav                                    => { type => 'boolean', default => 'false' },
  webdav_documents                          => { type => 'boolean', default => 'false' },
  webdav_sync_extern                        => { type => 'boolean', default => 'false' },
  webdav_sync_extern_login                  => { type => 'text' },
  webdav_sync_extern_pass                   => { type => 'text' },
  webdav_sync_extern_url                    => { type => 'text' },
  weightunit                                => { type => 'varchar', length => 5 },
  workflow_po_ap_chart_id                   => { type => 'integer' },
  yearend_method                            => { type => 'text', default => 'default', not_null => 1 },
  zugferd_ap_transaction_use_totals         => { type => 'boolean', default => 'false', not_null => 1 },
);

__PACKAGE__->meta->primary_key_columns([ 'id' ]);

__PACKAGE__->meta->allow_inline_column_values(1);

__PACKAGE__->meta->foreign_keys(
  ap_chart => {
    class       => 'SL::DB::Chart',
    key_columns => { ap_chart_id => 'id' },
  },

  ar_chart => {
    class       => 'SL::DB::Chart',
    key_columns => { ar_chart_id => 'id' },
  },

  bin => {
    class       => 'SL::DB::Bin',
    key_columns => { bin_id => 'id' },
  },

  bin_obj => {
    class       => 'SL::DB::Bin',
    key_columns => { bin_id_ignore_onhand => 'id' },
  },

  carry_over_account_chart => {
    class       => 'SL::DB::Chart',
    key_columns => { carry_over_account_chart_id => 'id' },
  },

  currency => {
    class       => 'SL::DB::Currency',
    key_columns => { currency_id => 'id' },
  },

  loss_carried_forward_chart => {
    class       => 'SL::DB::Chart',
    key_columns => { loss_carried_forward_chart_id => 'id' },
  },

  profit_carried_forward_chart => {
    class       => 'SL::DB::Chart',
    key_columns => { profit_carried_forward_chart_id => 'id' },
  },

  project_status => {
    class       => 'SL::DB::ProjectStatus',
    key_columns => { project_status_id => 'id' },
  },

  project_type => {
    class       => 'SL::DB::ProjectType',
    key_columns => { project_type_id => 'id' },
  },

  requirement_spec_section_order_part => {
    class       => 'SL::DB::Part',
    key_columns => { requirement_spec_section_order_part_id => 'id' },
  },

  stocktaking_bin => {
    class       => 'SL::DB::Bin',
    key_columns => { stocktaking_bin_id => 'id' },
  },

  stocktaking_warehouse => {
    class       => 'SL::DB::Warehouse',
    key_columns => { stocktaking_warehouse_id => 'id' },
  },

  warehouse => {
    class       => 'SL::DB::Warehouse',
    key_columns => { warehouse_id => 'id' },
  },

  warehouse_obj => {
    class       => 'SL::DB::Warehouse',
    key_columns => { warehouse_id_ignore_onhand => 'id' },
  },
);

1;
;
