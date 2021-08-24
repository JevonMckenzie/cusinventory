class Refund < ApplicationRecord
  belongs_to :user

  attr_readonly :vessel, :rotNum, :entryNum, :refundof, :enteredAs, :enteredAsQ, :enteredAsV, :enteredAsR, :enteredAsD, :shouldBe, :shouldBeQ, :shouldBeV, :shouldBeR, :shouldBeD, :reasonSupportRefund, :refundClaimed, :date, :signature




end
