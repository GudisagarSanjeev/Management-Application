#include "PaymentProxyModel.h"
static DataBaseInteractions *db=NULL;
PaymentProxyModel::PaymentProxyModel()
{
    db=DataBaseInteractions::Dbsingleton();
}

PaymentProxyModel::~PaymentProxyModel()
{
    qDebug()<<Q_FUNC_INFO<<endl;
    delete db;
}

void PaymentProxyModel::deleteInvoicenos(QString no)
{
    this->beginResetModel();
    db->deleteProxyInvoicenos(no);

    for(int i=0;i<proxyinfo.size();i++){
        if(proxyinfo.at(i).getIvno()==no){
            proxyinfo.removeAt(i);
        }
    }
    this->endResetModel();
}

void PaymentProxyModel::addInvoiceProxy(QString ivno, QString date, QString amt,QString company, QString sgst, QString cgst, QString igst, QString taxRs, QString tds, QString totalamt,QString tdssale, QString tdsinvoice, QString total, bool check)
{
    beginInsertRows(QModelIndex(), proxyinfo.count(), proxyinfo.count());
    proxyinfo << InVoiceInfo(ivno, date,amt,company,sgst,cgst,igst,taxRs,tds,totalamt,tdssale,tdsinvoice,total,false);
    if(check)
        db->insertinvoiceproxydata(ivno,date,amt,company, sgst, cgst, igst,taxRs, tds,totalamt,tdssale,tdsinvoice,total);
    endInsertRows();

}

int PaymentProxyModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return proxyinfo.count();
}

QVariant PaymentProxyModel::data(const QModelIndex &index, int role) const
{
    if(index.row()<0 || index.row()>=proxyinfo.count())
        return QVariant();

    const InVoiceInfo &info=proxyinfo[index.row()];
    if(role==INVOICE_NO)
        return info.getIvno();
    else if(role==DATE)
        return info.getDate();
    else if(role==AMOUNT)
        return info.getAmt();
    else if(role==SGST)
        return info.getSgst();
    else if(role==COMPANY)
            return info.getCompany();
    else if(role==CGST)
        return info.getCgst();
    else if(role==IGST)
        return info.getIgst();
    else if(role==TAXRS)
        return info.getTaxRs();
    else if(role==TDS)
        return info.getTds();
    else if(role==TOTALAMT)
        return info.getTotalamt();
    else if(role==TDSS)
        return info.getTdssale();
    else if(role==TDSI)
        return info.getTdsinvoice();
    else if(role==TOTAL)
        return info.getTotal();

    return QVariant();
}

QHash<int, QByteArray> PaymentProxyModel::roleNames() const
{
    QHash<int ,QByteArray> roles;
    roles[INVOICE_NO]="ivnoo";
    roles[DATE]="date";
    roles[AMOUNT]="amt";
    roles[COMPANY]="company";
    roles[SGST]="sgst";
    roles[CGST]="cgst";
    roles[IGST]="igst";
    roles[TAXRS]="taxrs";
    roles[TDS]="tds";
    roles[TOTALAMT]="totalamt";
    roles[TDSS]="tdssale";
    roles[TDSI]="tdsinvoice";
    roles[TOTAL]="total";

    return roles;
}
