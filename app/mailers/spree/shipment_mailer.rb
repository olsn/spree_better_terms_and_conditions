module Spree
  class ShipmentMailer < BaseMailer
    def shipped_email(shipment, resend = false)
      @shipment = shipment.respond_to?(:id) ? shipment : Spree::Shipment.find(shipment)
      subject = (resend ? "[#{Spree.t(:resend).upcase}] " : '')
      subject += "my-vana.de Versand-Bestaetigung fuer Bestellung ##{@shipment.order.number}"
      attachments['Rechnung.pdf'] = File.read('https://localhost:5433/admin/orders/'+@shipment.order.number+'.pdf?template=invoice')
      mail(to: @shipment.order.email, from: from_address, subject: subject)
    end
  end
end