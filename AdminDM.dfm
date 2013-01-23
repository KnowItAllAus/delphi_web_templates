object AdminData: TAdminData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 407
  Width = 303
  object StoreEnabledQuery: TIBQuery
    Database = RecastDB
    Transaction = Trans
    SQL.Strings = (
      
        'select company.name as companyname, stores.lastcomms, stores.id,' +
        ' storedata.name, stores.mac from stores, storedata, company'
      
        'where storedata.id=stores.id and company.id=stores.company and(c' +
        'ompany=:Company or 0=:Company) and storedata.enabled=1'
      'order by storedata.name')
    Left = 55
    Top = 117
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Company'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'Company'
        ParamType = ptInput
      end>
  end
  object StoreOnQuery: TIBQuery
    Database = RecastDB
    Transaction = Trans
    SQL.Strings = (
      
        'select company.name as companyname, stores.lastcomms, stores.id,' +
        ' storedata.name, stores.mac from stores, storedata, company'
      
        'where storedata.id=stores.id and company.id=stores.company and(c' +
        'ompany=:Company or 0=:Company) and stores.lastcomms>=:lastcomms ' +
        'and storedata.enabled=1'
      'order by storedata.name')
    Left = 50
    Top = 69
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Company'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'Company'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'lastcomms'
        ParamType = ptInput
        Value = 0d
      end>
  end
  object StoreOffQuery: TIBQuery
    Database = RecastDB
    Transaction = Trans
    SQL.Strings = (
      
        'select company.name as companyname, stores.company, stores.lastc' +
        'omms, stores.id, stores.mac, storedata.name from stores, storeda' +
        'ta, company'
      
        'where storedata.id=stores.id and company.id=stores.company and  ' +
        '(company=:Company or 0=:Company) and stores.lastcomms<:lastcomms' +
        ' and storedata.enabled=1'
      'order by storedata.name')
    Left = 50
    Top = 21
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Company'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'Company'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'lastcomms'
        ParamType = ptInput
        Value = 0d
      end>
  end
  object StoreDbgQuery: TIBQuery
    Database = RecastDB
    Transaction = Trans
    SQL.Strings = (
      
        'select company.name as companyname, stores.lastcomms, stores.id,' +
        ' storedata.name, stores.mac from stores, storedata, company'
      
        'where storedata.id=stores.id and company.id=stores.company and (' +
        'stores.company=:Company or 0=:Company) and stores.log>0'
      'order by storedata.name')
    Left = 132
    Top = 21
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Company'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'Company'
        ParamType = ptInput
      end>
  end
  object StoreAllQuery: TIBQuery
    Database = RecastDB
    Transaction = Trans
    SQL.Strings = (
      
        'select company.name as companyname, storedata.name, stores.lastc' +
        'omms, stores.mac, stores.id, storedata.name from stores, storeda' +
        'ta, company'
      
        'where storedata.id=stores.id and company.id=stores.company and(c' +
        'ompany=:Company or 0=:Company)'
      'order by storedata.name')
    Left = 55
    Top = 170
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Company'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'Company'
        ParamType = ptInput
      end>
  end
  object StorePendingQuery: TIBQuery
    Database = RecastDB
    Transaction = Trans
    SQL.Strings = (
      
        'select company.name as companyname, stores.lastcomms, stores.id,' +
        ' storedata.name, stores.mac from stores, storedata, company'
      
        'where storedata.id=stores.id and company.id=stores.company and(c' +
        'ompany=:Company or 0=:Company) and storedata.enabled=1 and (stor' +
        'es.configid<>stores.configidtx or stores.configupdate=1)'
      'order by storedata.name')
    Left = 55
    Top = 223
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Company'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'Company'
        ParamType = ptInput
      end>
  end
  object Trans: TIBTransaction
    DefaultDatabase = RecastDB
    DefaultAction = TARollback
    Params.Strings = (
      'concurrency'
      'nowait')
    Left = 138
    Top = 78
  end
  object RecastDB: TIBDatabase
    DatabaseName = 'No_Database_Name_Defined'
    Params.Strings = (
      'user_name=webapp'
      'PASSWORD=recastweb')
    LoginPrompt = False
    SQLDialect = 1
    Left = 136
    Top = 128
  end
  object SlaveAllEnQuery: TIBQuery
    Database = RecastDB
    Transaction = Trans
    SQL.Strings = (
      
        'select company.name as companyname, printers.company, printers.a' +
        'ddress, printers.lastcontact, printers.id, printers.pos,  printe' +
        'rdata.name, printers.ver, printers.bypass, storedata.name as sto' +
        'rename, stores.lastcomms  from storedata, printers, printerdata'
      ', stores, company '
      'where '
      'storedata.id=printers.store and '
      'stores.id = printers.store and '
      'printers.id=printerdata.id and'
      'company.id=stores.company and'
      '(company=:Company or 0=:Company) and '
      'storedata.enabled=1'
      'order by storedata.name')
    Left = 211
    Top = 137
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Company'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'Company'
        ParamType = ptInput
      end>
  end
  object SlaveAllQuery: TIBQuery
    Database = RecastDB
    Transaction = Trans
    SQL.Strings = (
      
        'select company.name as companyname, printers.company, printers.a' +
        'ddress, printers.lastcontact, printers.id, printers.pos, printer' +
        'data.name, printers.ver, printers.bypass, storedata.name as stor' +
        'ename, stores.lastcomms  from storedata, printers, printerdata'
      ', stores, company '
      'where '
      'storedata.id=printers.store and '
      'stores.id = printers.store and '
      'printers.id=printerdata.id and'
      'company.id=stores.company and'
      '(company=:Company or 0=:Company) '
      'order by storedata.name')
    Left = 211
    Top = 185
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Company'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'Company'
        ParamType = ptInput
      end>
  end
  object SlavePendingQuery: TIBQuery
    Database = RecastDB
    Transaction = Trans
    SQL.Strings = (
      'select company.name as companyname, printers.company,'
      
        'printers.address, printers.lastcontact, printers.id, printers.po' +
        's, printerdata.name, printers.ver, printers.bypass,'
      
        'storedata.name as storename, stores.lastcomms  from storedata, p' +
        'rinters, printerdata, stores, company'
      'where storedata.id=printers.store and'
      'stores.id = printers.store and'
      'printers.id=printerdata.id and'
      'company.id=stores.company and'
      '(company.id=:company or 0=:company) and'
      
        '(cast (stores.configid as varchar(16))<>printers.configid or sto' +
        'res.configupdate=1) and'
      'storedata.enabled=1 and'
      'printers.lastcontact>:lastcontact'
      'order by storedata.name')
    Left = 211
    Top = 81
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Company'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'company'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'lastcontact'
        ParamType = ptInput
        Value = 0d
      end>
  end
  object SlaveOffQuery: TIBQuery
    Database = RecastDB
    Transaction = Trans
    SQL.Strings = (
      
        'SELECT company.name as companyname, printers.address, printers.l' +
        'astcontact, printers.id, printers.pos, printerdata.name, printer' +
        's.ver, printers.bypass, storedata.name as storename, stores.last' +
        'comms  '
      'FROM storedata, printers, printerdata, stores, company '
      'WHERE'
      'storedata.id=printers.store and '
      'stores.id = printers.store and '
      'printers.id=printerdata.id and'
      'company.id=stores.company and'
      '(company=:Company or 0=:Company) and '
      'storedata.enabled=1 and'
      'lastcontact<:lastcontact and'
      'stores.lastcomms>:lastcontact'
      'ORDER BY storedata.name')
    Left = 211
    Top = 25
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Company'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'Company'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'lastcontact'
        ParamType = ptInput
        Value = 0d
      end
      item
        DataType = ftDateTime
        Name = 'lastcontact'
        ParamType = ptInput
      end>
  end
  object SlaveDbgQuery: TIBQuery
    Database = RecastDB
    Transaction = Trans
    SQL.Strings = (
      
        'select company.name as companyname,printers.company, printers.ad' +
        'dress, printers.lastcontact, printers.id, printers.pos, printerd' +
        'ata.name, printers.ver, printers.bypass, storedata.name as store' +
        'name, stores.lastcomms  from storedata, printers, printerdata'
      ', stores, company '
      'where '
      'storedata.id=printers.store and '
      'stores.id = printers.store and '
      'printers.id=printerdata.id and'
      'company.id=stores.company and'
      '(company=:Company or 0=:Company) and'
      'printers.log>0'
      'order by storedata.name')
    Left = 55
    Top = 280
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Company'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'Company'
        ParamType = ptInput
      end>
  end
  object SlaveBypassQuery: TIBQuery
    Database = RecastDB
    Transaction = Trans
    SQL.Strings = (
      
        'select company.name as companyname, printers.company, printers.a' +
        'ddress, printers.lastcontact, printers.id, printers.pos, printer' +
        's.ver, printers.bypass, printerdata.name, storedata.name as stor' +
        'ename, stores.lastcomms  from storedata, printers, printerdata'
      ', stores, company '
      'where '
      'storedata.id=printers.store and '
      'stores.id = printers.store and '
      'printers.id=printerdata.id and'
      'company.id=stores.company and'
      '((company=:Company) or (0=:Company)) and'
      'printers.bypass<>"P,N" and printers.bypass<>"A,N"'
      'order by storedata.name')
    Left = 143
    Top = 280
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Company'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'Company'
        ParamType = ptInput
      end>
  end
  object SlaveOnQuery: TIBQuery
    Database = RecastDB
    Transaction = Trans
    SQL.Strings = (
      
        'SELECT company.name as companyname, printers.address, printers.l' +
        'astcontact, printers.id, printers.pos, printerdata.name, printer' +
        's.ver, printers.bypass, storedata.name as storename, stores.last' +
        'comms  '
      'FROM storedata, printers, printerdata, stores, company '
      'WHERE'
      'storedata.id=printers.store and '
      'stores.id = printers.store and '
      'printers.id=printerdata.id and'
      'company.id=stores.company and'
      '(company=:Company or 0=:Company) and '
      'storedata.enabled=1 and'
      'lastcontact>:lastcontact '
      'ORDER BY storedata.name')
    Left = 211
    Top = 233
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Company'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'Company'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'lastcontact'
        ParamType = ptInput
        Value = 0d
      end>
  end
end
