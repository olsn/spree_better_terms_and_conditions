module Spree
  class ShipmentMailer < BaseMailer
    def shipped_email(shipment, resend = false)
      @shipment = shipment.respond_to?(:id) ? shipment : Spree::Shipment.find(shipment)
      subject = (resend ? "[#{Spree.t(:resend).upcase}] " : '')
      subject += "my-vana.de Versand-Bestaetigung fuer Bestellung ##{@shipment.order.number}"
      @order = @shipment.order
      attachments['Rechnung.pdf'] = render_to_string :template => "invoice.pdf.prawn"
      mail(to: @shipment.order.email, from: from_address, subject: subject)
    end
  end
end