class CreateAwuserChanges < ActiveRecord::Migration[5.0]
  def change
    create_table :awuser_changes do |t|
      t.boolean :acc_clerk
      t.boolean :fo_sting
      t.boolean :cusexaminer
      t.boolean :surveyor
      t.boolean :stn_manifest
      t.boolean :rmanagement
      t.boolean :pwarehouse
      t.boolean :excise
      t.boolean :s_postaudit
      t.boolean :exchrates
      t.boolean :report_user
      t.boolean :enforcement
      t.boolean :internal_auditor
      t.boolean :ass_comp_exam
      t.boolean :ass_comp_selena
      t.boolean :ass_comp_pg
      t.boolean :comptroller
      t.boolean :cashier
      t.boolean :chief_examiner
      t.boolean :facevet
      t.boolean :manifest
      t.boolean :t1
      t.boolean :swarehouse
      t.boolean :valuation
      t.boolean :postaudit
      t.boolean :item_admin_approval
      t.boolean :senforcement
      t.boolean :legal_officer
      t.boolean :ass_comp_postaudit
      t.boolean :ass_comp_benque
      t.boolean :ass_comp_pgia
      t.boolean :deputy_comptroller
      t.boolean :vetted_approvedby
      t.datetime :vetted_approveddate

      t.timestamps
    end
  end
end
