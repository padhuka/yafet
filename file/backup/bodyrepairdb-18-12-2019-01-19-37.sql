DROP TABLE t_acc_bank;

CREATE TABLE `t_acc_bank` (
  `no_bukti` varchar(50) NOT NULL,
  `tr_date` date NOT NULL,
  `transaction_type` enum('D','C') NOT NULL,
  `fk_akun` varchar(50) NOT NULL,
  `via_bayar` varchar(50) NOT NULL,
  `ref_akun` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  `description` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `diterima_dari` text NOT NULL,
  `tgl_batal` date NOT NULL,
  PRIMARY KEY (`no_bukti`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE t_acc_cash;

CREATE TABLE `t_acc_cash` (
  `no_bukti` varchar(50) NOT NULL,
  `tr_date` date NOT NULL,
  `transaction_type` enum('D','C') NOT NULL,
  `fk_akun` varchar(50) NOT NULL,
  `via_bayar` varchar(50) NOT NULL,
  `ref_akun` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  `description` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `diterima_dari` text NOT NULL,
  `tgl_batal` date NOT NULL,
  PRIMARY KEY (`no_bukti`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE t_akun;

CREATE TABLE `t_akun` (
  `id` varchar(10) NOT NULL,
  `coa` text NOT NULL,
  `fk_head_account` text NOT NULL,
  `transaction_type` enum('D','C') NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_akun VALUES("A0001","11.01.01.00.00","11.01","D","KAS");
INSERT INTO t_akun VALUES("A0002","11.01.01.00.01","11.01","D","Kas Besar");
INSERT INTO t_akun VALUES("A0003","11.01.01.00.02","11.01","D","Kas Kecil");
INSERT INTO t_akun VALUES("A0004","11.01.01.00.03","11.01","D","Kas Lain lain");
INSERT INTO t_akun VALUES("A0007","11.02.01.00.00","11.02","D","BANK");
INSERT INTO t_akun VALUES("A0008","11.02.01.00.01","11.02","D","Bank BCA 8030888767/ Giro Bank Pemasukan");
INSERT INTO t_akun VALUES("A0009","11.02.01.00.02","11.02","D","Bank BCA 8030365144/ ESTI SWAJATI");
INSERT INTO t_akun VALUES("A0010","11.02.01.00.03","11.02","D","Bank Lain lain");
INSERT INTO t_akun VALUES("A0021","11.04.01.00.00","11.04","D","PIUTANG");
INSERT INTO t_akun VALUES("A0022","11.04.01.00.01","11.04","D","Piutang BR ");
INSERT INTO t_akun VALUES("A0023","11.04.01.00.02","11.04","D","Piutang Dagang Service");
INSERT INTO t_akun VALUES("A0024","11.04.01.00.03","11.04","D","Piutang Dagang Free Service");
INSERT INTO t_akun VALUES("A0025","11.04.01.00.04","11.04","D","Piutang Dagang Spare Part");
INSERT INTO t_akun VALUES("A0026","11.04.01.00.05","11.04","D","Piutang Dagang Claim ATPM");
INSERT INTO t_akun VALUES("A0027","11.04.01.00.06","11.04","D","Piutang Dagang Lainnya");
INSERT INTO t_akun VALUES("A0028","11.04.01.00.07","11.04","D","Diskon Bengkel");
INSERT INTO t_akun VALUES("A0029","11.04.01.00.08","11.04","D","Piutang Afiliasi");
INSERT INTO t_akun VALUES("A0030","11.04.01.00.09","11.04","D","Piutang Karyawan");
INSERT INTO t_akun VALUES("A0031","11.04.01.00.10","11.04","D","Piutang Tak tertagih");
INSERT INTO t_akun VALUES("A0032","11.04.01.00.11","11.04","D","Piutang Dagang Body Repair");
INSERT INTO t_akun VALUES("A0033","11.04.01.00.12","11.04","C","Diskon Body Repair");
INSERT INTO t_akun VALUES("A0034","11.04.01.00.13","11.04","D","Piutang Dagang Bahan");
INSERT INTO t_akun VALUES("A0035","11.04.01.00.14","11.04","D","Piutang Dagang Hubungan Istimewa");
INSERT INTO t_akun VALUES("A0036","11.04.01.10.14","11.04","D","Piutang Dagang Hubungan Istimewa");
INSERT INTO t_akun VALUES("A0037","11.04.01.20.14","11.04","D","Piutang Dagang Hubungan Istimewa");
INSERT INTO t_akun VALUES("A0038","11.04.01.30.14","11.04","D","Piutang Dagang Hubungan Istimewa");
INSERT INTO t_akun VALUES("A0039","11.05.01.00.00","11.05","D","PERSEDIAAN");
INSERT INTO t_akun VALUES("A0040","11.05.01.00.01","11.05","D","Persediaan Mobil");
INSERT INTO t_akun VALUES("A0041","11.05.01.00.02","11.05","D","Persediaan Bahan");
INSERT INTO t_akun VALUES("A0042","11.05.01.00.03","11.05","D","Persedian Spare Part");
INSERT INTO t_akun VALUES("A0043","11.05.01.00.04","11.05","D","Persedian Accessoris");
INSERT INTO t_akun VALUES("A0044","11.05.01.00.05","11.05","D","Barang Dagang Terkirim-Unit");
INSERT INTO t_akun VALUES("A0045","11.05.01.00.06","11.06","D","Barang dagang Terkirim-Aksesoris");
INSERT INTO t_akun VALUES("A0046","11.05.01.00.07","11.06","D","Barang Dagang Terkirim-Bahan");
INSERT INTO t_akun VALUES("A0047","11.05.01.00.08","11.06","D","Barang Dagang Terkirim-Material");
INSERT INTO t_akun VALUES("A0048","11.05.01.00.09","11.06","D","Barang Dagang Terkirm-Oli");
INSERT INTO t_akun VALUES("A0049","11.05.01.00.10","11.06","D","Barang Dagang Terkirim-Part");
INSERT INTO t_akun VALUES("A0050","11.06.01.00.00","11.06","D","UANG MUKA PENJUALAN UNIT");
INSERT INTO t_akun VALUES("A0051","11.06.01.00.01","11.06","D","Uang Muka Pembelian Mobil");
INSERT INTO t_akun VALUES("A0052","11.06.01.00.02","11.06","D","Uang Muka Pembelian Suku Cadang");
INSERT INTO t_akun VALUES("A0053","11.06.01.00.03","11.06","D","Biaya Dibayar dimuka");
INSERT INTO t_akun VALUES("A0054","11.06.01.00.04","11.06","D","Sewa Dibayar Dimuka");
INSERT INTO t_akun VALUES("A0055","11.06.01.00.05","11.06","D","UANG MUKA PEMBELIAN LAIN LAIN");
INSERT INTO t_akun VALUES("A0056","11.07.01.00.00","11.07","D","PAJAK DIBAYAR DIMUKA");
INSERT INTO t_akun VALUES("A0057","11.07.01.00.01","11.07","D","Pajak Dibayar Dimuka PPh 22");
INSERT INTO t_akun VALUES("A0058","11.07.01.00.02","11.07","D","Pajak Dibayar Dimuka PPh 23");
INSERT INTO t_akun VALUES("A0059","11.07.01.00.03","11.07","D","Pajak Dibayar Dimuka PPh 25");
INSERT INTO t_akun VALUES("A0060","11.07.01.00.04","11.07","D","Pajak Dibayar Dimuka PPh 29");
INSERT INTO t_akun VALUES("A0061","11.07.01.00.05","11.07","D","Pajak Dibayar Dimuka PPh Pasal 4 ayat 2");
INSERT INTO t_akun VALUES("A0062","11.07.01.00.06","11.07","D","Pajak Dibayar Dimuka PPN");
INSERT INTO t_akun VALUES("A0063","11.08.01.00.00","11.08","D","UANG MUKA PAJAK");
INSERT INTO t_akun VALUES("A0064","11.08.01.00.01","11.08","D","Uang Muka Pajak");
INSERT INTO t_akun VALUES("A0065","12.01.01.00.00","12.01","D","ASET TETAP");
INSERT INTO t_akun VALUES("A0066","12.01.01.00.01","12.01","D","Gedung");
INSERT INTO t_akun VALUES("A0067","12.01.01.00.02","12.01","D","Peralatan Kantor");
INSERT INTO t_akun VALUES("A0068","12.01.01.00.03","12.01","D","Peralatan Bengkel");
INSERT INTO t_akun VALUES("A0069","12.01.01.00.04","12.01","D","Inventaris Kendaraan");
INSERT INTO t_akun VALUES("A0070","12.01.01.00.05","12.01","D","Tanah");
INSERT INTO t_akun VALUES("A0071","12.01.01.00.06","12.01","D","Aset Dalam Penyelesaian");
INSERT INTO t_akun VALUES("A0072","12.01.01.00.07","12.01","D","Aset Tetap tidak berwujud");
INSERT INTO t_akun VALUES("A0073","12.01.01.00.08","12.01","D","Pajak Tangguhan");
INSERT INTO t_akun VALUES("A0074","12.02.01.00.00","12.02","D","TRANSITORIS");
INSERT INTO t_akun VALUES("A0075","12.02.01.00.01","12.02","D","Transitoris");
INSERT INTO t_akun VALUES("A0076","12.03.01.00.00","12.03","C","AKUMULASI DEPRESIASI");
INSERT INTO t_akun VALUES("A0077","12.03.01.00.01","12.03","C","Akumulasi Depresiasi Gedung");
INSERT INTO t_akun VALUES("A0078","12.03.01.00.02","12.03","C","Akumulasi Depresiasi Peralatan Kantor");
INSERT INTO t_akun VALUES("A0079","12.03.01.00.03","12.03","C","Akumulasi Depresiasi Peralatan Bengkel");
INSERT INTO t_akun VALUES("A0080","12.03.01.00.04","12.03","C","Akumulasi Depresiasi Kendaraan");
INSERT INTO t_akun VALUES("A0081","12.04.01.00.00","12.04","D","BIAYA PRA OPERASIONAL");
INSERT INTO t_akun VALUES("A0082","12.04.01.00.01","12.04","D","Biaya Pra Operasional");
INSERT INTO t_akun VALUES("A0083","21.01.01.00.00","21.01","C","HUTANG DAGANG");
INSERT INTO t_akun VALUES("A0084","21.01.01.00.01","21.01","C","Hutang Dagang Mobil");
INSERT INTO t_akun VALUES("A0085","21.01.01.00.02","21.01","C","Hutang Dagang Spare Part");
INSERT INTO t_akun VALUES("A0086","21.01.01.00.03","21.01","C","Hutang Dagang Bahan");
INSERT INTO t_akun VALUES("A0087","21.01.01.00.04","21.01","C","Hutang Dagang Lainnya");
INSERT INTO t_akun VALUES("A0088","21.01.01.00.05","21.01","C","Hutang Dagang Hubungan Istimewa");
INSERT INTO t_akun VALUES("A0089","21.01.01.10.05","21.01","C","Hutang Dagang Hubungan Istimewa");
INSERT INTO t_akun VALUES("A0090","21.01.01.20.05","21.01","C","Hutang Dagang Hubungan Istimewa");
INSERT INTO t_akun VALUES("A0091","21.01.01.30.05","21.01","C","Hutang Dagang Hubungan Istimewa");
INSERT INTO t_akun VALUES("A0092","21.02.01.00.00","21.02","C","HUTANG LAIN LAIN");
INSERT INTO t_akun VALUES("A0093","21.02.01.00.01","21.02","C","Hutang Afiliasi");
INSERT INTO t_akun VALUES("A0094","21.02.01.00.02","21.02","C","Hutang Lain lain");
INSERT INTO t_akun VALUES("A0095","21.02.01.00.03","21.02","C","Biaya yang masih harus dibayar");
INSERT INTO t_akun VALUES("A0096","21.02.01.00.04","21.02","C","Hutang Jasa Eksternal");
INSERT INTO t_akun VALUES("A0097","21.02.01.00.05","21.02","C","Hutang Komisi");
INSERT INTO t_akun VALUES("A0098","21.03.01.00.00","21.03","C","HUTANG PAJAK");
INSERT INTO t_akun VALUES("A0099","21.03.01.00.01","21.03","C","HUTANG PAJAK PPh 21");
INSERT INTO t_akun VALUES("A0100","21.03.01.00.02","21.03","C","HUTANG PAJAK PPh 23");
INSERT INTO t_akun VALUES("A0101","21.03.01.00.03","21.03","C","HUTANG PAJAK PPh 4 (2)");
INSERT INTO t_akun VALUES("A0102","21.03.01.00.04","21.03","C","HUTANG PAJAK PPh 25/29");
INSERT INTO t_akun VALUES("A0103","21.03.01.00.05","21.03","C","Hutang PPN");
INSERT INTO t_akun VALUES("A0104","21.03.01.00.06","21.03","C","Hutang Pajak Tangguhan");
INSERT INTO t_akun VALUES("A0105","21.04.01.00.00","21.04","C","UANG MUKA PENJUALAN");
INSERT INTO t_akun VALUES("A0106","21.04.01.00.01","21.04","C","Uang Muka Penjualan Unit");
INSERT INTO t_akun VALUES("A0107","21.04.01.00.02","21.04","C","Uang Muka Penjualan Service");
INSERT INTO t_akun VALUES("A0108","21.04.01.00.03","21.04","C","Uang Muka Penjualan Spare Part");
INSERT INTO t_akun VALUES("A0109","21.04.01.00.04","21.04","C","Uang Muka Penjualan Body Repair");
INSERT INTO t_akun VALUES("A0110","21.04.01.00.05","21.04","C","Penampungan Uang Muka Penjualan Unit");
INSERT INTO t_akun VALUES("A0111","21.04.01.00.06","21.04","C","Penampungan Uang Muka Penjualan Service");
INSERT INTO t_akun VALUES("A0112","21.04.01.00.07","21.04","C","Penampungan Uang Muka Penjualan Spare Part");
INSERT INTO t_akun VALUES("A0113","21.04.01.00.08","21.04","C","Penampungan Uang Muka Penjualan Body Repair");
INSERT INTO t_akun VALUES("A0114","21.04.01.00.09","21.04","C","UANG MUKA PENJUALAN LAINNYA");
INSERT INTO t_akun VALUES("A0115","21.05.01.00.00","21.05","C","HUTANG BANK");
INSERT INTO t_akun VALUES("A0116","21.05.01.00.01","21.05","C","Hutang Bank");
INSERT INTO t_akun VALUES("A0117","21.05.01.00.02","21.05","C","Hutang Bank Lain lain");
INSERT INTO t_akun VALUES("A0118","21.06.01.00.00","21.06","C","TITIPAN BBN");
INSERT INTO t_akun VALUES("A0119","21.06.01.00.01","21.06","C","Titipan BBN");
INSERT INTO t_akun VALUES("A0120","31.01.01.00.00","31.01","C","MODAL DISETOR");
INSERT INTO t_akun VALUES("A0121","31.01.01.00.01","31.01","C","Modal Disetor");
INSERT INTO t_akun VALUES("A0122","31.02.01.00.00","31.02","C","SALDO LABA");
INSERT INTO t_akun VALUES("A0123","31.02.01.00.01","31.02","C","Laba Ditahan");
INSERT INTO t_akun VALUES("A0124","31.02.01.00.02","31.02","C","Laba (Rugi) Tahun Berjalan");
INSERT INTO t_akun VALUES("A0125","31.02.01.00.03","31.02","C","Laba (Rugi) Bulan Berjalan");
INSERT INTO t_akun VALUES("A0157","41.01.01.30.01","41.01","C","Penjualan Mobil");
INSERT INTO t_akun VALUES("A0158","41.01.01.30.02","41.01","C","Penjualan Service");
INSERT INTO t_akun VALUES("A0159","41.01.01.30.03","41.01","C","Penjualan Free Service");
INSERT INTO t_akun VALUES("A0160","41.01.01.30.04","41.01","C","Penjualan Spare Part");
INSERT INTO t_akun VALUES("A0161","41.01.01.30.05","41.01","C","Penjualan Claim");
INSERT INTO t_akun VALUES("A0162","41.01.01.30.06","41.01","C","Penjualan Lainnya");
INSERT INTO t_akun VALUES("A0163","41.01.01.30.07","41.01","C","Penjualan Aksesoris");
INSERT INTO t_akun VALUES("A0164","41.01.01.30.08","41.01","C","Penjualan Bahan");
INSERT INTO t_akun VALUES("A0165","41.01.01.30.09","41.01","C","Penjualan Material");
INSERT INTO t_akun VALUES("A0166","41.01.01.30.10","41.01","C","Penjualan Oli");
INSERT INTO t_akun VALUES("A0187","41.02.01.30.01","41.02","C","Retur Penjualan Mobil");
INSERT INTO t_akun VALUES("A0188","41.02.01.30.02","41.02","C","Retur Penjualan Service");
INSERT INTO t_akun VALUES("A0189","41.02.01.30.03","41.02","C","Retur Penjualan Free Service");
INSERT INTO t_akun VALUES("A0190","41.02.01.30.04","41.02","C","Retur Penjualan Spare Part");
INSERT INTO t_akun VALUES("A0191","41.02.01.30.05","41.02","C","Retur Penjualan Claim");
INSERT INTO t_akun VALUES("A0192","41.02.01.30.06","41.02","C","Retur Penjualan Lainnya");
INSERT INTO t_akun VALUES("A0212","41.03.01.30.01","41.03","C","Potongan Penjualan Mobil");
INSERT INTO t_akun VALUES("A0213","41.03.01.30.02","41.03","C","Potongan Penjualan Service");
INSERT INTO t_akun VALUES("A0214","41.03.01.30.03","41.03","C","Potongan Penjualan Free Service");
INSERT INTO t_akun VALUES("A0215","41.03.01.30.04","41.03","C","Potongan Penjualan Spare Part");
INSERT INTO t_akun VALUES("A0216","41.03.01.30.05","41.03","C","Potongan Penjualan Claim");
INSERT INTO t_akun VALUES("A0217","41.03.01.30.06","41.03","C","Potongan Penjualan Lainnya");
INSERT INTO t_akun VALUES("A0243","51.01.01.30.01","51.01","D","Harga Pokok Penjualan Mobil");
INSERT INTO t_akun VALUES("A0244","51.01.01.30.02","51.01","D","Biaya Bahan Bengkel");
INSERT INTO t_akun VALUES("A0245","51.01.01.30.03","51.01","D","Biaya Jasa Pekerjaan Luar (HPP)");
INSERT INTO t_akun VALUES("A0246","51.01.01.30.04","51.01","D","HPP Spare Part");
INSERT INTO t_akun VALUES("A0247","51.01.01.30.05","51.01","D","HPP Accessories");
INSERT INTO t_akun VALUES("A0248","51.01.01.30.06","51.01","D","HPP Bahan");
INSERT INTO t_akun VALUES("A0249","51.01.01.30.07","51.01","D","HPP Material");
INSERT INTO t_akun VALUES("A0250","51.01.01.30.08","51.01","D","HPP Oli");
INSERT INTO t_akun VALUES("A0270","51.02.01.30.01","51.02","D","Retur Pembelian Mobil");
INSERT INTO t_akun VALUES("A0271","51.02.01.30.02","51.02","D","Retur Pembelian Service");
INSERT INTO t_akun VALUES("A0272","51.02.01.30.03","51.02","D","Retur Pembelian Free Service");
INSERT INTO t_akun VALUES("A0273","51.02.01.30.04","51.02","D","Retur Pembelian Spare Part");
INSERT INTO t_akun VALUES("A0274","51.02.01.30.05","51.02","D","Retur Pembelian Claim");
INSERT INTO t_akun VALUES("A0275","51.02.01.30.06","51.02","D","Retur Pembelian Lainnya");
INSERT INTO t_akun VALUES("A0295","51.03.01.30.01","51.03","D","Potongan Pembelian Mobil");
INSERT INTO t_akun VALUES("A0296","51.03.01.30.02","51.03","D","Potongan Pembelian Service");
INSERT INTO t_akun VALUES("A0297","51.03.01.30.03","51.03","D","Potongan Pembelian Free Service");
INSERT INTO t_akun VALUES("A0298","51.03.01.30.04","51.03","D","Potongan Pembelian Spare Part");
INSERT INTO t_akun VALUES("A0299","51.03.01.30.05","51.03","D","Potongan Pembelian Claim");
INSERT INTO t_akun VALUES("A0325","51.04.01.30.01","51.04","D","Biaya Bahan Bengkel");
INSERT INTO t_akun VALUES("A0326","51.04.01.30.02","51.04","D","Biaya Bahan body repair ( Luar )");
INSERT INTO t_akun VALUES("A0327","51.04.01.30.03","51.04","D","Biaya Jasa Bahan Bengkel");
INSERT INTO t_akun VALUES("A0328","51.04.01.30.04","51.04","D","Biaya Jasa Body Repair (Luar)");
INSERT INTO t_akun VALUES("A0329","51.04.01.30.05","51.04","D","Biaya Pemeliharaan Peralatan Bengkel");
INSERT INTO t_akun VALUES("A0330","51.04.01.30.06","51.04","D","Biaya Perbaikan Kendaraan Dagangan");
INSERT INTO t_akun VALUES("A0331","51.04.01.30.07","51.04","D","Biaya Accessories");
INSERT INTO t_akun VALUES("A0332","51.04.01.30.08","51.04","D","Biaya Jasa Order Pekerjaan Luar");
INSERT INTO t_akun VALUES("A0515","61.01.01.30.01","61.01","D","Biaya gaji dan upah");
INSERT INTO t_akun VALUES("A0516","61.01.01.30.02","61.01","D","Biaya tunjangan");
INSERT INTO t_akun VALUES("A0517","61.01.01.30.03","61.01","D","Biaya Insentives");
INSERT INTO t_akun VALUES("A0518","61.01.01.30.04","61.01","D","Biaya THR & Bonus");
INSERT INTO t_akun VALUES("A0519","61.01.01.30.05","61.01","D","Biaya Jamsostek");
INSERT INTO t_akun VALUES("A0520","61.01.01.30.06","61.01","D","Biaya Lembur");
INSERT INTO t_akun VALUES("A0521","61.01.01.30.07","61.01","D","Biaya Pesangon Karyawan");
INSERT INTO t_akun VALUES("A0522","61.01.01.30.08","61.01","D","Biaya Tunjangan PPh 21");
INSERT INTO t_akun VALUES("A0523","61.01.01.30.09","61.01","D","Biaya Outsourching / pihak ketiga");
INSERT INTO t_akun VALUES("A0524","61.01.01.30.10","61.01","D","Biaya Listrik & PAM");
INSERT INTO t_akun VALUES("A0525","61.01.01.30.11","61.01","D","Biaya Telephone & Fax");
INSERT INTO t_akun VALUES("A0526","61.01.01.30.12","61.01","D","Biaya Internet/ Domain");
INSERT INTO t_akun VALUES("A0527","61.01.01.30.13","61.01","D","Biaya Perjalanan Dinas Dalam Negeri Karyawan");
INSERT INTO t_akun VALUES("A0528","61.01.01.30.14","61.01","D","Biaya Perjalanan Dinas Dalam Negeri Direksi");
INSERT INTO t_akun VALUES("A0529","61.01.01.30.15","61.01","D","Biaya Perjalanan Dinas Luar Negeri Karyawan");
INSERT INTO t_akun VALUES("A0530","61.01.01.30.16","61.01","D","Biaya Perjalanan Dinas Luar Negeri Direksi");
INSERT INTO t_akun VALUES("A0531","61.01.01.30.17","61.01","D","Biaya Alat Tulis & Cetakan");
INSERT INTO t_akun VALUES("A0532","61.01.01.30.18","61.01","D","Biaya Fotocopy");
INSERT INTO t_akun VALUES("A0533","61.01.01.30.19","61.01","D","Biaya Surat Kabar / Majalah");
INSERT INTO t_akun VALUES("A0534","61.01.01.30.20","61.01","D","Biaya Ekspedisi, pos dan pengiriman surat lainnya");
INSERT INTO t_akun VALUES("A0535","61.01.01.30.21","61.01","D","Biaya Transport dan parkir");
INSERT INTO t_akun VALUES("A0536","61.01.01.30.22","61.01","D","Biaya Bahan Bakar Kendaraan Inventaris");
INSERT INTO t_akun VALUES("A0537","61.01.01.30.23","61.01","D","Biaya Pemeliharaan Gedung");
INSERT INTO t_akun VALUES("A0538","61.01.01.30.24","61.01","D","Biaya Pemeliharaan Kendaraan Inventaris");
INSERT INTO t_akun VALUES("A0539","61.01.01.30.25","61.01","D","Biaya Pemeliharaan Peralatan Kantor");
INSERT INTO t_akun VALUES("A0540","61.01.01.30.26","61.01","D","Biaya Maintenance Software");
INSERT INTO t_akun VALUES("A0541","61.01.01.30.27","61.01","D","Biaya Pemeliharaan lain lain");
INSERT INTO t_akun VALUES("A0542","61.01.01.30.28","61.01","D","Biaya Penyusutan Kendaraan Inventaris");
INSERT INTO t_akun VALUES("A0543","61.01.01.30.29","61.01","D","Biaya Penyusutan Peralatan Kantor");
INSERT INTO t_akun VALUES("A0544","61.01.01.30.30","61.01","D","Biaya Penyusutan Peralatan Bengkel");
INSERT INTO t_akun VALUES("A0545","61.01.01.30.31","61.01","D","Biaya Penyusutan Peralatan Gedung");
INSERT INTO t_akun VALUES("A0546","61.01.01.30.32","61.01","D","Biaya Perizinan dan Notaris");
INSERT INTO t_akun VALUES("A0547","61.01.01.30.33","61.01","D","Biaya STNK & KIR Kendaraan Inventaris");
INSERT INTO t_akun VALUES("A0548","61.01.01.30.34","61.01","D","Biaya Iuran RT/RW dan Keamanan");
INSERT INTO t_akun VALUES("A0549","61.01.01.30.35","61.01","D","Biaya Pajak Bumi dan Bangunan");
INSERT INTO t_akun VALUES("A0550","61.01.01.30.36","61.01","D","Biaya Diklat");
INSERT INTO t_akun VALUES("A0551","61.01.01.30.37","61.01","D","Biaya Pengobatan");
INSERT INTO t_akun VALUES("A0552","61.01.01.30.38","61.01","D","Biaya Asuransi Gedung");
INSERT INTO t_akun VALUES("A0553","61.01.01.30.39","61.01","D","Biaya Asuransi Alat bengkel");
INSERT INTO t_akun VALUES("A0554","61.01.01.30.40","61.01","D","Biaya Sewa");
INSERT INTO t_akun VALUES("A0555","61.01.01.30.41","61.01","D","Biaya Penagihan");
INSERT INTO t_akun VALUES("A0556","61.01.01.30.42","61.01","D","Biaya Seragam Kerja");
INSERT INTO t_akun VALUES("A0557","61.01.01.30.43","61.01","D","Biaya STCK");
INSERT INTO t_akun VALUES("A0558","61.01.01.30.44","61.01","D","Biaya BBN");
INSERT INTO t_akun VALUES("A0559","61.01.01.30.45","61.01","D","Biaya Konsultan dan Jasa");
INSERT INTO t_akun VALUES("A0560","61.01.01.30.46","61.01","D","Biaya Rumah tangga kantor");
INSERT INTO t_akun VALUES("A0561","61.01.01.30.47","61.01","D","Biaya Kesejahteraan Karyawan");
INSERT INTO t_akun VALUES("A0562","61.01.01.30.48","61.01","D","Biaya Promosi & Iklan");
INSERT INTO t_akun VALUES("A0563","61.01.01.30.49","61.01","D","Biaya Promosi / Iklan lain lain");
INSERT INTO t_akun VALUES("A0564","61.01.01.30.50","61.01","D","Biaya Pameran (Outdoor)");
INSERT INTO t_akun VALUES("A0565","61.01.01.30.51","61.01","D","Biaya Showroom Event (Indoor)");
INSERT INTO t_akun VALUES("A0566","61.01.01.30.52","61.01","D","Biaya Lucky Dip");
INSERT INTO t_akun VALUES("A0567","61.01.01.30.53","61.01","D","Biaya BBM Showroom");
INSERT INTO t_akun VALUES("A0568","61.01.01.30.54","61.01","D","Biaya Pengiriman Kendaraan");
INSERT INTO t_akun VALUES("A0569","61.01.01.30.55","61.01","D","Biaya Komisi");
INSERT INTO t_akun VALUES("A0570","61.01.01.30.56","61.01","D","Biaya Asuransi Kendaraan");
INSERT INTO t_akun VALUES("A0657","71.01.01.30.01","71.01","C","Pendapatan Jasa Giro/Bunga");
INSERT INTO t_akun VALUES("A0658","71.01.01.30.02","71.01","C","Pendapatan BBN");
INSERT INTO t_akun VALUES("A0659","71.01.01.30.03","71.01","C","Pendapatan Refund Asuransi Kredit");
INSERT INTO t_akun VALUES("A0660","71.01.01.30.04","71.01","C","Pendapatan DWR/FS");
INSERT INTO t_akun VALUES("A0661","71.01.01.30.05","71.01","C","Pendapatan Management Fee");
INSERT INTO t_akun VALUES("A0662","71.01.01.30.06","71.01","C","Pendapatan Penjualan Asuransi Tunai");
INSERT INTO t_akun VALUES("A0663","71.01.01.30.07","71.01","C","Pendapatan Non Operasional Lainnya");
INSERT INTO t_akun VALUES("A0664","71.01.01.30.08","71.01","C","Pendapatan Jasa OPL");
INSERT INTO t_akun VALUES("A0696","81.01.01.30.01","81.01","D","Biaya Bunga Bank");
INSERT INTO t_akun VALUES("A0697","81.01.01.30.02","81.01","D","Biaya Administrasi Bank");
INSERT INTO t_akun VALUES("A0698","81.01.01.30.03","81.01","D","Biaya Denda Pajak");
INSERT INTO t_akun VALUES("A0699","81.01.01.30.04","81.01","D","Biaya Pajak Atas Jasa Giro");
INSERT INTO t_akun VALUES("A0700","81.01.01.30.05","81.01","D","Biaya Pajak Reklame/Umbul-umbul");
INSERT INTO t_akun VALUES("A0701","81.01.01.30.06","81.01","D","Biaya STP,SKP,SKPKB,SKPKBT (Pajak)");
INSERT INTO t_akun VALUES("A0702","81.01.01.30.07","81.01","D","Biaya Provisi dan Adm Kredit bank");
INSERT INTO t_akun VALUES("A0703","81.01.01.30.08","81.01","D","Biaya Entertaiment");
INSERT INTO t_akun VALUES("A0704","81.01.01.30.09","81.01","D","Biaya Sumbangan");
INSERT INTO t_akun VALUES("A0705","81.01.01.30.10","81.01","D","Biaya Non Operasional Lainnya");
INSERT INTO t_akun VALUES("A0713","91.01.01.30.01","91.01","D","Pajak Kini");
INSERT INTO t_akun VALUES("A0714","91.01.01.30.02","91.01","D","Pajak Tangguhan");



DROP TABLE t_asuransi;

CREATE TABLE `t_asuransi` (
  `id_asuransi` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telp` varchar(50) NOT NULL,
  `npwp` varchar(50) NOT NULL,
  PRIMARY KEY (`id_asuransi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_asuransi VALUES("2","3","3","3","3");
INSERT INTO t_asuransi VALUES("ABDA","PT.ASURANSI BINA DANA ARTA","SOLOBARU SUKOHARJO","0271622508","");
INSERT INTO t_asuransi VALUES("ACA","ASURANSI CENTRAL ASIA","SURAKARTA","","");
INSERT INTO t_asuransi VALUES("AHGI","ASURANSI HARTA GENERAL INSURANCE","SURAKARTA","0271669948","");
INSERT INTO t_asuransi VALUES("BCAI","BCA INSURANCE","","","");
INSERT INTO t_asuransi VALUES("BCI","PT BESS CENTRAL INSURANCE","SOLOBARU SUKOHARJO","02715722832","");
INSERT INTO t_asuransi VALUES("MAG","PT MITRA ARTHA GUNA","SURAKARTA","","");
INSERT INTO t_asuransi VALUES("MPM RENT","PT.MITRA PINASTHIKA MUSTIKA RENT","Sunburst,CBD Lot II No.10 Jl.Kapten Soebijanto\nDj","081215581110","");
INSERT INTO t_asuransi VALUES("MPMI","PT.MPM INSURANCE","SURAKARTA","","");
INSERT INTO t_asuransi VALUES("MPMR","PT.MPM RENT","SUNBURST,CBD LOT II NO.10 JL.KAPTEN SOEBIJANTO BSD","081215581110","");
INSERT INTO t_asuransi VALUES("PANFIC","PT.PAN PACIFIC INSURANCE","GROGOL SOLOBARU SUKOHARJO","0271626394","");
INSERT INTO t_asuransi VALUES("RAKSA","PT ASURANSI RAKSA PRATIKARA","TIPES SERENGAN SURAKARTA","","");



DROP TABLE t_bank;

CREATE TABLE `t_bank` (
  `no_bukti` varchar(20) NOT NULL,
  `tgl_transaksi` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tipe_transaksi` varchar(20) NOT NULL,
  `diterima_dari` text NOT NULL,
  `via_bayar` enum('Transfer','Debit Card','Credit Card','') DEFAULT NULL,
  `fk_partner_bank` varchar(20) NOT NULL,
  `no_ref` varchar(20) NOT NULL,
  `total` double NOT NULL,
  `keterangan` text NOT NULL,
  `tgl_batal` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `keterangan_batal` text NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`no_bukti`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_bank VALUES("BM_BR.071219.000018","2019-10-21 00:00:00","Pelunasan","PT ASURANSI MITRA PELINDUNG MUSTIKA","Transfer","","SI_BR.160919.000006","2110908","Pelunasan BR, PPh 23 senilai Rp 39,092","0000-00-00 00:00:00","","2019-12-07 09:14:08");
INSERT INTO t_bank VALUES("BM_BR.071219.000019","2019-12-07 00:00:00","Pelunasan","PT Pan Pasific Insurance","Transfer","","SI_BR.120919.000002","1373705","Pelunasan BR, PPh 23 senilai Rp 2,640","2019-12-07 10:22:08","SALAH TANGGAL BAYAR","2019-12-07 09:25:44");
INSERT INTO t_bank VALUES("BM_BR.071219.000020","2019-10-08 00:00:00","Pelunasan","PT Pan Pasific Insurance","Transfer","","SI_BR.120919.000002","1373705","Pelunasan BR, PPh 23 senilai Rp 2,640","0000-00-00 00:00:00","","2019-12-07 10:23:30");
INSERT INTO t_bank VALUES("BM_BR.071219.000021","2019-10-10 00:00:00","Pelunasan","PT Asuransi Umum BCA","Transfer","","SI_BR.110919.000001","25028556","Pelunasan BR, PPh 23 senilai Rp 12,059","0000-00-00 00:00:00","","2019-12-07 10:26:44");
INSERT INTO t_bank VALUES("BM_BR.071219.000022","2019-10-10 00:00:00","Pelunasan","PT Asuransi Umum BCA","Transfer","","SI_BR.140919.000005","4744400","Pelunasan BR, PPh 23 senilai Rp 20,600","0000-00-00 00:00:00","","2019-12-07 10:55:32");
INSERT INTO t_bank VALUES("BM_BR.071219.000023","2019-10-10 00:00:00","Pelunasan","PT Asuransi Umum BCA","Transfer","","SI_BR.140919.000005","4744400","Pelunasan BR, PPh 23 senilai Rp 20,600","2019-12-07 10:56:04","dobel input","2019-12-07 10:55:32");
INSERT INTO t_bank VALUES("BM_BR.081019.000008","2019-10-08 00:00:00","Pelunasan","CANDRA","Debit Card","","SI_BR.071019.000029","499999.99995","PEMBAYARAN BODYREPAIR","0000-00-00 00:00:00","","2019-10-08 08:17:16");
INSERT INTO t_bank VALUES("BM_BR.081119.000013","2019-11-08 00:00:00","Pelunasan","NURCHOLIS","Debit Card","","SI_BR.081119.000055","450000","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","","2019-11-08 16:18:43");
INSERT INTO t_bank VALUES("BM_BR.120919.000001","2019-09-10 00:00:00","Pelunasan","ARIF ANDI WIHATMANTO ST","Transfer","","SI_BR.120919.000003","989999.901","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","","2019-09-12 10:37:20");
INSERT INTO t_bank VALUES("BM_BR.140919.000002","2019-09-14 00:00:00","Pelunasan","PT PARAMETAL PERKASA","Debit Card","","SI_BR.140919.000004","2199999.99989","PEMBAYARAN BODYREPAIR","0000-00-00 00:00:00","","2019-09-14 10:46:46");
INSERT INTO t_bank VALUES("BM_BR.141019.000009","2019-10-14 00:00:00","Pelunasan","TRI BEKTI","Transfer","","SI_BR.141019.000034","1399999.99986","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","","2019-10-14 08:39:53");
INSERT INTO t_bank VALUES("BM_BR.160919.000003","2019-09-16 00:00:00","Pelunasan","BP ANDINO ZAVTRA","Transfer","","OR_BR.140919.000003","900000","PEMBAYARAN OR","0000-00-00 00:00:00","","2019-09-16 13:44:38");
INSERT INTO t_bank VALUES("BM_BR.171019.000010","2019-10-17 00:00:00","Pelunasan","SUTIMAH","Transfer","","SI_BR.171019.000036","599999.99994","PEMBAYARAN BODYREPAIR","0000-00-00 00:00:00","","2019-10-17 15:40:02");
INSERT INTO t_bank VALUES("BM_BR.181019.000011","2019-10-18 00:00:00","Pelunasan","KAKA","Transfer","","SI_BR.181019.000038","999999.9999","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","","2019-10-18 10:57:13");
INSERT INTO t_bank VALUES("BM_BR.181119.000014","2019-11-18 00:00:00","Pelunasan","PIALANIA","Transfer","","SI_BR.181119.000059","1350000","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","","2019-11-18 08:30:18");
INSERT INTO t_bank VALUES("BM_BR.190919.000004","2019-09-19 00:00:00","Pelunasan","HENGKY","Transfer","","SI_BR.190919.000008","1399999.99986","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","","2019-09-19 10:08:16");
INSERT INTO t_bank VALUES("BM_BR.240919.000005","2019-09-24 00:00:00","Pelunasan","","Transfer","","SI_BR.240919.000016","999999.99","PEMBAYARAN PERBAIKAN BODY REPAIR","2019-09-24 10:54:39","","2019-09-24 10:54:12");
INSERT INTO t_bank VALUES("BM_BR.240919.000006","2019-09-24 00:00:00","Pelunasan","TN HENGKY","Transfer","","SI_BR.240919.000016","999999.99","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","","2019-09-24 10:55:15");
INSERT INTO t_bank VALUES("BM_BR.240919.000007","2019-09-24 00:00:00","Pelunasan","TN HENGKY","Transfer","","SI_BR.240919.000017","999999.99176","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","","2019-09-24 11:05:36");
INSERT INTO t_bank VALUES("BM_BR.261019.000012","2019-10-26 00:00:00","Pelunasan","FUAD","Transfer","","SI_BR.251019.000043","650000","DEBIT BCA","0000-00-00 00:00:00","","2019-10-26 10:13:26");
INSERT INTO t_bank VALUES("BM_BR.271119.000015","2019-11-27 00:00:00","Pelunasan","TEDDY RIYANTO","Transfer","","SI_BR.271119.000075","1250000","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","","2019-11-27 14:21:28");
INSERT INTO t_bank VALUES("BM_BR.291119.000016","2019-11-29 00:00:00","Pelunasan","TEDDY","Transfer","","SI_BR.271119.000075","1250000","PEMBAYARAN PERBAIKAN BODY REPAIR","2019-11-29 13:46:36","SUDAH DI LUNASI  DI NO BUKTI BM_BR.271119.000015","2019-11-29 13:44:53");
INSERT INTO t_bank VALUES("BM_BR.301119.000017","2019-11-30 00:00:00","Pelunasan","ONGKY","Transfer","","SI_BR.301119.000084","600000","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","","2019-11-30 13:44:56");



DROP TABLE t_cash;

CREATE TABLE `t_cash` (
  `no_bukti` varchar(20) NOT NULL,
  `tgl_transaksi` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tipe_transaksi` varchar(20) NOT NULL,
  `diterima_dari` text NOT NULL,
  `no_ref` varchar(20) NOT NULL,
  `total` double NOT NULL,
  `keterangan` text NOT NULL,
  `tgl_batal` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `keterangan_batal` text NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`no_bukti`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_cash VALUES("KM_BR.021119.000021","2019-11-02 00:00:00","Pelunasan","","SI_BR.021119.000052","500000","","2019-11-02 12:16:29","","2019-11-02 12:16:13");
INSERT INTO t_cash VALUES("KM_BR.021119.000022","2019-11-02 00:00:00","Pelunasan","LINDA","SI_BR.021119.000052","500000","","0000-00-00 00:00:00","","2019-11-02 12:17:07");
INSERT INTO t_cash VALUES("KM_BR.041119.000023","2019-11-04 00:00:00","Pelunasan","TANTONI","OR_BR.021119.000018","300000","PEMBAYARAN OR","0000-00-00 00:00:00","","2019-11-04 09:10:35");
INSERT INTO t_cash VALUES("KM_BR.041119.000024","2019-11-04 00:00:00","Pelunasan","SUCI","","400000","","2019-11-04 15:20:15","BELUM INPUT NO REF","2019-11-04 15:18:59");
INSERT INTO t_cash VALUES("KM_BR.041119.000025","2019-11-04 00:00:00","Pelunasan","SUCI","SI_BR.041119.000053","400000","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","","2019-11-04 15:23:18");
INSERT INTO t_cash VALUES("KM_BR.051119.000026","2019-11-05 00:00:00","Pelunasan","HARTONO SRI RAHARJO","SI_BR.051119.000054","700000","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","","2019-11-05 09:53:09");
INSERT INTO t_cash VALUES("KM_BR.110919.000001","2019-09-11 00:00:00","Pelunasan","EDI SETIAWAN","OR_BR.110919.000001","300000","PEMBAYARAN OR","0000-00-00 00:00:00","","2019-09-11 15:27:57");
INSERT INTO t_cash VALUES("KM_BR.111019.000009","2019-10-11 00:00:00","Pelunasan","HARRY SANTOSA","OR_BR.111019.000012","600000","PEMBAYARAN OR","0000-00-00 00:00:00","","2019-10-11 10:56:04");
INSERT INTO t_cash VALUES("KM_BR.120919.000002","2019-09-12 00:00:00","Pelunasan","SIGIT","OR_BR.120919.000002","300000","PEMBAYARAN OR","0000-00-00 00:00:00","","2019-09-12 09:44:51");
INSERT INTO t_cash VALUES("KM_BR.121019.000010","2019-10-12 00:00:00","Pelunasan","SUDARSI","OR_BR.121019.000013","300000","PEMBAYARAN OR","0000-00-00 00:00:00","","2019-10-12 10:58:35");
INSERT INTO t_cash VALUES("KM_BR.151119.000027","2019-11-15 00:00:00","Pelunasan","CHRISTIAN SANJAYA","OR_BR.151119.000019","300000","PEMBAYARAN OR BODY REPAIR","0000-00-00 00:00:00","","2019-11-15 15:26:49");
INSERT INTO t_cash VALUES("KM_BR.151119.000028","2019-11-15 00:00:00","Pelunasan","DR. SUGENG PURNOMO","SI_BR.151119.000057","2700000","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","","2019-11-15 15:43:24");
INSERT INTO t_cash VALUES("KM_BR.181019.000011","2019-10-18 00:00:00","Pelunasan","SUGENG","SI_BR.181019.000037","1299999.99987","PEMBAYARAN BODYREPAIR","0000-00-00 00:00:00","","2019-10-18 13:12:42");
INSERT INTO t_cash VALUES("KM_BR.190919.000003","2019-09-19 00:00:00","Pelunasan","BOBBY","SI_BR.190919.000010","1599999.973","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","","2019-09-19 14:24:28");
INSERT INTO t_cash VALUES("KM_BR.190919.000004","2019-09-19 00:00:00","Pelunasan","AHMAD","SI_BR.190919.000009","2199999.97998","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","","2019-09-19 16:09:21");
INSERT INTO t_cash VALUES("KM_BR.191019.000012","2019-10-19 00:00:00","Pelunasan","SAWUNG","SI_BR.191019.000039","1199999.99999","PEMBAYARAN BODYREPAIR","0000-00-00 00:00:00","","2019-10-19 11:44:37");
INSERT INTO t_cash VALUES("KM_BR.191119.000029","2019-11-19 00:00:00","Pelunasan","BOWO","SI_BR.191119.000060","450000","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","","2019-11-19 08:59:31");
INSERT INTO t_cash VALUES("KM_BR.191119.000030","2019-11-19 00:00:00","Pelunasan","YOPE","SI_BR.191119.000061","4100000","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","","2019-11-19 15:46:34");
INSERT INTO t_cash VALUES("KM_BR.191119.000031","2019-11-19 00:00:00","Pelunasan","PT PARAMETAL PERKASA AGUNG","SI_BR.191119.000062","650000","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","","2019-11-19 15:49:25");
INSERT INTO t_cash VALUES("KM_BR.221019.000013","2019-10-22 00:00:00","Pelunasan","SUGENG TRI RAHARJO","SI_BR.221019.000040","899999.99991","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","","2019-10-22 15:03:35");
INSERT INTO t_cash VALUES("KM_BR.221119.000032","2019-11-22 00:00:00","Pelunasan","SITI ROHANA/DAVID","OR_BR.221119.000021","600000","PEMBAYARAN OR BODY REPAIR","0000-00-00 00:00:00","","2019-11-22 13:41:03");
INSERT INTO t_cash VALUES("KM_BR.240919.000005","2019-09-24 00:00:00","Pelunasan","TN HENDRO","SI_BR.230919.000011","5287419.999433","PEMBAYARAN BODYREPAIR","0000-00-00 00:00:00","","2019-09-24 08:24:55");
INSERT INTO t_cash VALUES("KM_BR.240919.000006","2019-09-24 00:00:00","Pelunasan","AMBARWARI NUNIK","SI_BR.240919.000012","584999.999991","PEMBAYARAN BODYREPAIR","0000-00-00 00:00:00","","2019-09-24 09:17:55");
INSERT INTO t_cash VALUES("KM_BR.240919.000007","2019-09-24 00:00:00","Pelunasan","TARJAMAAH","OR_BR.240919.000005","300000","PEMBAYARAN OR","0000-00-00 00:00:00","","2019-09-24 10:46:29");
INSERT INTO t_cash VALUES("KM_BR.250919.000008","2019-09-25 00:00:00","Pelunasan","RUDY","SI_BR.250919.000019","800000.3","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","","2019-09-25 08:34:53");
INSERT INTO t_cash VALUES("KM_BR.251019.000014","2019-10-25 00:00:00","Pelunasan","LINDA","OR_BR.241019.000014","900000","FREE OR 1X","0000-00-00 00:00:00","","2019-10-25 15:22:07");
INSERT INTO t_cash VALUES("KM_BR.251019.000015","2019-10-25 00:00:00","Pelunasan","LINDA","OR_BR.241019.000014","900000","FREE OR 1X","2019-10-25 15:22:58","DOBEL INPUT","2019-10-25 15:22:07");
INSERT INTO t_cash VALUES("KM_BR.251119.000033","2019-11-25 00:00:00","Pelunasan","FERDIAN","SI_BR.251119.000072","8043500","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","","2019-11-25 14:19:43");
INSERT INTO t_cash VALUES("KM_BR.261019.000015","2019-10-26 00:00:00","Pelunasan","DEWI","SI_BR.251019.000042","450000","BODY REPAIR","0000-00-00 00:00:00","","2019-10-26 09:20:55");
INSERT INTO t_cash VALUES("KM_BR.261119.000034","2019-11-26 00:00:00","Pelunasan","TRI RUSNITA, S.E., M.M.","SI_BR.261119.000073","249999.99992","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","","2019-11-26 13:44:30");
INSERT INTO t_cash VALUES("KM_BR.261119.000035","2019-11-26 00:00:00","Pelunasan","HAN","SI_BR.261119.000074","200000","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","","2019-11-26 15:52:46");
INSERT INTO t_cash VALUES("KM_BR.291019.000016","2019-10-29 00:00:00","Pelunasan","SUGENG","OR_BR.281019.000015","600000","FREE OR 1X","0000-00-00 00:00:00","","2019-10-29 13:55:28");
INSERT INTO t_cash VALUES("KM_BR.291019.000017","2019-10-29 00:00:00","Pelunasan","HERRY","SI_BR.291019.000049","3100000","","0000-00-00 00:00:00","","2019-10-29 15:44:35");
INSERT INTO t_cash VALUES("KM_BR.291119.000036","2019-11-29 00:00:00","Pelunasan","CHRISTIN","SI_BR.291119.000080","730000","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","","2019-11-29 14:30:06");
INSERT INTO t_cash VALUES("KM_BR.291119.000037","2019-11-29 00:00:00","Pelunasan","ADNAN ANWAR","SI_BR.291119.000081","150000","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","","2019-11-29 15:23:40");
INSERT INTO t_cash VALUES("KM_BR.301119.000038","2019-11-30 00:00:00","Pelunasan","SUCI","SI_BR.301119.000085","550000","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","","2019-11-30 13:45:44");
INSERT INTO t_cash VALUES("KM_BR.311019.000018","2019-10-31 00:00:00","Pelunasan","TARJAMAH","OR_BR.240919.000005","300000","","2019-10-31 09:32:08","","2019-10-31 09:30:41");
INSERT INTO t_cash VALUES("KM_BR.311019.000019","2019-09-04 00:00:00","Pelunasan","TARJAMAH","OR_BR.240919.000005","300000","","2019-10-31 09:32:15","","2019-10-31 09:31:49");
INSERT INTO t_cash VALUES("KM_BR.311019.000020","2019-10-31 00:00:00","Pelunasan","I WAYAN KARTHANA","OR_BR.311019.000017","300000","","0000-00-00 00:00:00","","2019-10-31 15:47:58");



DROP TABLE t_cuci;

CREATE TABLE `t_cuci` (
  `id_cuci` varchar(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `harga_pokok` double NOT NULL,
  `harga_jual` double NOT NULL,
  `diskon` float NOT NULL,
  `ppn` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_cuci VALUES("101","STANDARD","0","40000","0","0");
INSERT INTO t_cuci VALUES("102","BESAR","0","40000","0","0");
INSERT INTO t_cuci VALUES("103","MESIN STANDARD","0","30000","0","0");
INSERT INTO t_cuci VALUES("104","MOTOR","9000","10000","0","0");
INSERT INTO t_cuci VALUES("105","MESIN BESAR","18000","20000","0","0");
INSERT INTO t_cuci VALUES("106","CUCI DISKON","0","25000","0","0");



DROP TABLE t_customer;

CREATE TABLE `t_customer` (
  `id_customer` varchar(25) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_ktp` varchar(20) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tgl_customer` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_customer VALUES("CUST_BR.011019.000025","I WAYAN KARTHANA","L","MES SRITEX C.5 JL KH SAMANHUDI RT 4/6 JETIS SKH","","089617760078","","2019-10-01 10:59:19");
INSERT INTO t_customer VALUES("CUST_BR.021119.000043","THOMAS","L","SOLOBARU SUKOHARJO","","081251220388","","2019-11-02 11:13:12");
INSERT INTO t_customer VALUES("CUST_BR.021119.000044","TUMBU ASTIANI R","L","JL BUNGUR RAYA NO.9 RT 03 RW 07 KEL HARJAMUKTI KEC","","02717880845","","2019-11-02 12:18:29");
INSERT INTO t_customer VALUES("CUST_BR.021119.000045","TN.NURCHOLIS","L","SURAKARTA","","081329160080","","2019-11-02 12:31:44");
INSERT INTO t_customer VALUES("CUST_BR.031019.000026","CANDRA","L","JL KINTAMANI XV NO.R45 SUMMARECON SRP RT.009/007 K","","087718106888","","2019-10-03 10:16:29");
INSERT INTO t_customer VALUES("CUST_BR.041019.000027","TRI BEKTI","L","GONGGANGAN RT 02/04 BOLON COLOMADU KARANGANYAR","","081229845900","","2019-10-04 11:26:37");
INSERT INTO t_customer VALUES("CUST_BR.041119.000046","PIALANIA","L","JL NANGKA RT 002 RW 003 KEDAUNG SAWAGAN DEPOK","","081251220388","","2019-11-04 09:01:10");
INSERT INTO t_customer VALUES("CUST_BR.041119.000047","TN.FERDIAN","L","MENDUNGAN NO 1C RT 2/3 PABELAN KTS","","085647000136","","2019-11-04 14:10:12");
INSERT INTO t_customer VALUES("CUST_BR.041119.000048","TN.SUCI","L","SURAKARTA","","081215267800","","2019-11-04 14:49:37");
INSERT INTO t_customer VALUES("CUST_BR.061119.000049","DR SUGENG PURNOMO","L","GODEGAN RT 2/1 GENTAN BDSR SKH","","081548502680","","2019-11-06 10:36:28");
INSERT INTO t_customer VALUES("CUST_BR.061119.000050","TN.BOWO","L","SURAKARTA","","0816679174","","2019-11-06 11:09:34");
INSERT INTO t_customer VALUES("CUST_BR.061119.000051","WINDY SORAYA DEWI","P","KANDANG MENJANGAN RT 5/14 PUCANGAN KARTASURA SKH","","081226046161","","2019-11-06 11:17:59");
INSERT INTO t_customer VALUES("CUST_BR.081019.000028","TN.YOPE","L","SURAKARTA","","081251220388","","2019-10-08 09:22:25");
INSERT INTO t_customer VALUES("CUST_BR.081119.000052","BINA IKLAS SETYAWATI","P","BULUSARI RT 01/04 BULUSARI SLOGOHIMO WONOGIRI","","081226346666","","2019-11-08 08:15:15");
INSERT INTO t_customer VALUES("CUST_BR.091019.000029","LINDA","L","PUNGKUK RT01/11 JETIS JATEN KRA","","081251220388","","2019-10-09 13:38:23");
INSERT INTO t_customer VALUES("CUST_BR.091019.000030","NY.SUTIMAH","P","PENGILON RT 07/03 MANGUNSARI","","","","2019-10-09 14:04:07");
INSERT INTO t_customer VALUES("CUST_BR.091019.000031","HARTONO SRI RAHARJO","L","JL MERAPI BB 7 SLBR RT 1/7 LNHJ GRL SKH","","6281329937390","","2019-10-09 14:19:47");
INSERT INTO t_customer VALUES("CUST_BR.091019.000032","SUGENG","L","SURAKARTA","","081329937390","","2019-10-09 14:29:32");
INSERT INTO t_customer VALUES("CUST_BR.101019.000033","SUDARSI","P","JL NAKULA III NO 9 RT 02/02 WONOKARTO WONOGIRI","","081329234463","","2019-10-10 10:00:28");
INSERT INTO t_customer VALUES("CUST_BR.110919.000001","EDY SETIAWAN","L","PUSPAN KIDUL RT 001 RW 008 TIPES SERENGAN","","082326012829","","2019-09-11 13:31:49");
INSERT INTO t_customer VALUES("CUST_BR.111119.000053","CHRISTIAN SANJAYA/MATEUS DIAN SANJAYA","L","JL TENTARA PELAJAR 57 BIBIS KULON RT 04/17 GILINGA","","08119142158","","2019-11-11 15:00:38");
INSERT INTO t_customer VALUES("CUST_BR.120919.000002","SIGIT","L","PURWODININGRATAN RT 02/04 JEBRES SKA","","08122654033","","2019-09-12 08:55:17");
INSERT INTO t_customer VALUES("CUST_BR.120919.000003","ARIF ANDI WIHATMANTO ST","L","SURAKARTA","","081215105599","","2019-09-12 10:14:47");
INSERT INTO t_customer VALUES("CUST_BR.120919.000004","ANDINO ZAVTRA","L","CLUSTER KAV CEMPAKA VILLAGE NO 10 RT 02\nRW 03 JAT","","081387837962","","2019-09-12 11:10:29");
INSERT INTO t_customer VALUES("CUST_BR.120919.000005","TN BOBBY","L","","","087839432050","","2019-09-12 11:38:55");
INSERT INTO t_customer VALUES("CUST_BR.120919.000006","PT.PARAMETAL PERKASA AGUNG","L","SURAKARTA","","","","2019-09-12 13:26:00");
INSERT INTO t_customer VALUES("CUST_BR.120919.000007","TN AHMAD","L","SURAKARTA","","08121540204","","2019-09-12 13:59:00");
INSERT INTO t_customer VALUES("CUST_BR.120919.000008","HENGKY","L","SURAKARTA","","081390035788","","2019-09-12 14:39:54");
INSERT INTO t_customer VALUES("CUST_BR.121119.000054","SITI ROHANA / DAVID","L","JL JATISARI RT 2/13 GISIKDRONO SMG BRT","","081374091191","","2019-11-12 14:07:51");
INSERT INTO t_customer VALUES("CUST_BR.130919.000009","PT.MPM RENT","L","SUNBURST,CBD LOT II NO.10 JL.KAPTEN SOEBIJANTO BSD","","081215581110","","2019-09-13 08:42:21");
INSERT INTO t_customer VALUES("CUST_BR.151019.000034","TN.SAWUNG","L","SURAKARTA","","08122798166","","2019-10-15 09:33:12");
INSERT INTO t_customer VALUES("CUST_BR.161119.000055","ASAD","L","JL SAMRATULANGI NO 78 RT 01/03 KERTEN LAWEYAN SURA","","082313033999","","2019-11-16 09:03:13");
INSERT INTO t_customer VALUES("CUST_BR.170919.000010","TARJAMAAH","P","BULUREJO RT001/003","","022226564319","","2019-09-17 09:09:21");
INSERT INTO t_customer VALUES("CUST_BR.170919.000011","RONY","L","PRAYUNAN RT 003/006 PURWODININGRATAN JEBRES","","08562561575","","2019-09-17 09:12:26");
INSERT INTO t_customer VALUES("CUST_BR.170919.000012","SRI LESTARI","P","JL P YONI 75 BR PANTI GEDE PEMOGAN DENPASAR","","081229940102","","2019-09-17 09:13:59");
INSERT INTO t_customer VALUES("CUST_BR.170919.000013","TN RUDI","L","SURAKARTA","","08122970336","","2019-09-17 09:14:52");
INSERT INTO t_customer VALUES("CUST_BR.170919.000014","SENYUM INDRAKILA","L","JL NUSA INDAH RT 05/RW 02 PUNGGAWAN","","08122599159","","2019-09-17 09:17:56");
INSERT INTO t_customer VALUES("CUST_BR.170919.000015","ABDA","L","JL SAMRATULANGI NO 76 RT001/003 KERTEN LAWEYAN","","087712395442","","2019-09-17 09:19:24");
INSERT INTO t_customer VALUES("CUST_BR.170919.000016","ARIS SANTOSO","L","PERUM GRAND RESIDENCE I NO.5 RT 003 RW 006\nSINGOP","","081226300063","","2019-09-17 11:26:09");
INSERT INTO t_customer VALUES("CUST_BR.171019.000035","LUSIANTI DEWI","L","JL SUTAN SYAHRIR 96 RT 006/002 KEPATIHAN JEBRES","","","","2019-10-17 09:23:39");
INSERT INTO t_customer VALUES("CUST_BR.180919.000017","AMBARWARI NUNIK ESTININGSIH","L","SINGORANON 06/08 PULISEN BOYOLALI","","","","2019-09-18 09:31:05");
INSERT INTO t_customer VALUES("CUST_BR.180919.000018","PT.MPM RENT","L","SUNBURST,CBD LOT II NO.10 JL.KAPTEN SOEBIJANTO BSD","","081215581110","","2019-09-18 09:54:03");
INSERT INTO t_customer VALUES("CUST_BR.191019.000036","DIDIK HARIYANTO","L","KRANGGAN WETAN NGUMBUL RT 3/1 WIROGUNAN KTS SKH","","081329937390","","2019-10-19 09:36:17");
INSERT INTO t_customer VALUES("CUST_BR.191019.000037","PT PANJI RAMA OTOMOTIF","L","JL SULTAN ISKANDAR MUDA NO.97 JS","","0271-7880845","","2019-10-19 10:05:53");
INSERT INTO t_customer VALUES("CUST_BR.200919.000019","TN.HENDRO","L","JL VETERAN NO.64 RT 3/1 GAJAHAN PS.KLIWON\nSKA","","08156703904","","2019-09-20 13:26:06");
INSERT INTO t_customer VALUES("CUST_BR.211019.000038","FUAD","L","SURAKARTA","","081225870438","","2019-10-21 13:42:24");
INSERT INTO t_customer VALUES("CUST_BR.230919.000020","ADRIAN RONALD LALOAN","L","KANDANG SAPI RT 004/001 TEGALHARJO JEBRES","","081215581110","","2019-09-23 09:14:32");
INSERT INTO t_customer VALUES("CUST_BR.230919.000021","HARRY SENTOSA","L","JL VETERAN NO 203 RT 1/1 SERENGAN SURAKARTA","","0816673980","","2019-09-23 10:49:58");
INSERT INTO t_customer VALUES("CUST_BR.231019.000039","DEWI","P","SURAKARTA","","087736382262","","2019-10-23 08:12:16");
INSERT INTO t_customer VALUES("CUST_BR.231019.000040","HERRY TN","L","SURAKARTA","","081251220388","","2019-10-23 09:30:32");
INSERT INTO t_customer VALUES("CUST_BR.231119.000056","RATIH ESMIQA HELMEISOEN","P","SEKAR GADING BLOK R-3 RT 06 RW 03 GUNUNG PATI SEMA","","02717880845","","2019-11-23 10:24:03");
INSERT INTO t_customer VALUES("CUST_BR.241019.000041","RUDDY DJUARSO","L","JL.KASUARI B-32 SOLOBARU RT 006/007 LANGENHARJO GR","","081251220388","","2019-10-24 13:48:22");
INSERT INTO t_customer VALUES("CUST_BR.251119.000057","TRI RUSNITA SE MM","P","KALITAN RT 01/01 PENUMPING LWY SKA","","081567665441","","2019-11-25 09:50:53");
INSERT INTO t_customer VALUES("CUST_BR.260919.000022","PT.DJAJA HARAPAN PERMATA","L","JL YOS SUDARSO NO 113 RT 4/8 GAJAHAN PSK SKA","","08122616234","","2019-09-26 09:59:29");
INSERT INTO t_customer VALUES("CUST_BR.261119.000058","CHRISTIN","P","SURAKARTA","","08562536523","","2019-11-26 09:21:32");
INSERT INTO t_customer VALUES("CUST_BR.261119.000059","ONGKY","L","SURAKARTA","","081251220388","","2019-11-26 09:29:11");
INSERT INTO t_customer VALUES("CUST_BR.261119.000060","HAN","L","WONOGIRI","","085290128666","","2019-11-26 14:29:10");
INSERT INTO t_customer VALUES("CUST_BR.270919.000023","TN.KAKA","L","SURAKARTA","","082244075605","","2019-09-27 15:01:26");
INSERT INTO t_customer VALUES("CUST_BR.271119.000061","ADNAN ANWAR","L","JL UNTUNG SUROPATI NO 39 RT 01/02 KEDUNG LUMBU PSK","","081904763100","","2019-11-27 14:47:04");
INSERT INTO t_customer VALUES("CUST_BR.280919.000024","SUGENG TRI RAHARJO","L","DABAGSARI SEMANGGI RT 2/6 SEMANGGI PASAR KLIWON SU","","081393604100","","2019-09-28 10:27:22");
INSERT INTO t_customer VALUES("CUST_BR.301019.000042","RIDWAN ARIF / TANTONI","L","KALIABANG TENGAH NO 38 RT 03 RW 02 KALIABANG TENGA","","081329909966","","2019-10-30 08:49:25");
INSERT INTO t_customer VALUES("CUST_BR.301119.000062","TN.SUCI","L","SURAKARTA","","082137125768","","2019-11-30 11:41:51");



DROP TABLE t_estimasi;

CREATE TABLE `t_estimasi` (
  `id_estimasi` varchar(50) NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp(),
  `kategori` varchar(10) NOT NULL,
  `fk_no_chasis` varchar(50) NOT NULL,
  `fk_no_mesin` varchar(50) NOT NULL,
  `fk_no_polisi` varchar(50) NOT NULL,
  `fk_customer` varchar(50) NOT NULL,
  `fk_asuransi` varchar(50) NOT NULL,
  `km_masuk` varchar(50) NOT NULL,
  `fk_user` varchar(50) NOT NULL,
  `total_gross_harga_panel` double NOT NULL,
  `total_diskon_rupiah_panel` double NOT NULL,
  `total_netto_harga_panel` double NOT NULL,
  `total_gross_harga_part` double NOT NULL,
  `total_diskon_rupiah_part` double NOT NULL,
  `total_netto_harga_part` double NOT NULL,
  `total_gross_harga_jasa` double NOT NULL,
  `total_diskon_rupiah_jasa` double NOT NULL,
  `total_netto_harga_jasa` double NOT NULL,
  `tgl_batal` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `tgl_estimasi_selesai` date NOT NULL,
  `approved` enum('0','1') DEFAULT '0',
  PRIMARY KEY (`id_estimasi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_estimasi VALUES("EST_BR.011019.000040","2019-10-01 11:01:59","Asuransi","MHRRU1850FJ404794","L15Z61005633","AD 9016 XT","CUST_BR.011019.000025","MAG","","admin","2975000","0","2975000","0","0","0","2975000","0","2975000","0000-00-00 00:00:00","2019-10-15","1");
INSERT INTO t_estimasi VALUES("EST_BR.021119.000071","2019-11-02 12:20:46","Pribadi","WDC2511542A086484","27294530871092","B 105 TA","CUST_BR.021119.000044","","","admin","727272.7272","72727.27272","654545.45448","0","0","0","727272.7272","72727.27272","654545.45448","0000-00-00 00:00:00","2019-11-02","1");
INSERT INTO t_estimasi VALUES("EST_BR.021119.000072","2019-11-02 12:33:00","Pribadi","MHRRM3850DJ342329","K24Z99407689","AD 7153 BS","CUST_BR.021119.000045","","","admin","409090.909","0","409090.909","0","0","0","409090.909","0","409090.909","0000-00-00 00:00:00","2019-11-02","1");
INSERT INTO t_estimasi VALUES("EST_BR.031019.000041","2019-10-03 09:48:57","Pribadi","MHRRM1830FJ550873","R20A59461240","H 8056 SY","CUST_BR.120919.000008","","80911","admin","1363636.3635","136363.63635000002","1227272.72715","0","0","0","1363636.3635","136363.63635000002","1227272.72715","0000-00-00 00:00:00","2019-10-04","0");
INSERT INTO t_estimasi VALUES("EST_BR.031019.000042","2019-10-03 10:39:33","Pribadi","MM6DJ2HAAHW325025","P520459460","B 1977 NRQ","CUST_BR.031019.000026","","15779","admin","454545.4545","0","454545.4545","0","0","0","454545.4545","0","454545.4545","0000-00-00 00:00:00","2019-10-05","1");
INSERT INTO t_estimasi VALUES("EST_BR.041019.000043","2019-10-04 11:35:18","Pribadi","MPB2XXMXB2CL11351","MGDBCL11351","AD 7267 LF","CUST_BR.041019.000027","","74685","admin","1272727.2726","0","1272727.2726","0","0","0","1272727.2726","0","1272727.2726","0000-00-00 00:00:00","2019-10-10","1");
INSERT INTO t_estimasi VALUES("EST_BR.041119.000073","2019-11-04 09:03:32","Pribadi","MHRGB3850CJ211037","L15A75801908","B 1263 ZFE","CUST_BR.041119.000046","","","admin","1363636.3633999997","136363.63634","1227272.7270600002","0","0","0","1363636.3633999997","136363.63634","1227272.7270600002","0000-00-00 00:00:00","2019-11-09","1");
INSERT INTO t_estimasi VALUES("EST_BR.041119.000074","2019-11-04 14:05:54","Pribadi","MNBLS4D110AW311993","WLAT1223B59","AD 8775 LK","CUST_BR.191019.000036","","","admin","954545.4545","95454.54545","859090.90905","0","0","0","954545.4545","95454.54545","859090.90905","0000-00-00 00:00:00","2019-11-09","1");
INSERT INTO t_estimasi VALUES("EST_BR.041119.000075","2019-11-04 14:12:20","Pribadi","MHKS6GJ6JJJ045619","3NRH261839","AD 9351 ST","CUST_BR.041119.000047","","","admin","4045454.5442","404545.45441999985","3640909.089779999","3671363.6363","0","3671363.6363","7716818.1805","404545.45441999985","7312272.726079999","0000-00-00 00:00:00","2019-11-23","1");
INSERT INTO t_estimasi VALUES("EST_BR.041119.000076","2019-11-04 14:57:26","Pribadi","JHMZF1421DS300006","LEA33001081","B 1700 K","CUST_BR.041119.000048","","","admin","363636.3636","0","363636.3636","0","0","0","363636.3636","0","363636.3636","0000-00-00 00:00:00","2019-11-04","1");
INSERT INTO t_estimasi VALUES("EST_BR.051019.000044","2019-10-05 09:51:44","Asuransi","MHKM5PA4JKK053247","2NRF848178","N 1183 BN","CUST_BR.130919.000009","MPM RENT","","admin","2050000","0","2050000","0","0","0","2050000","0","2050000","2019-10-12 10:10:48","2019-10-05","1");
INSERT INTO t_estimasi VALUES("EST_BR.061119.000077","2019-11-06 10:53:02","Pribadi","MHRDD4870FJ459731","L15Z11216697","AD 9181 HT","CUST_BR.061119.000049","","","admin","2454545.4544999995","0","2454545.4544999995","0","0","0","2454545.4544999995","0","2454545.4544999995","0000-00-00 00:00:00","2019-11-14","1");
INSERT INTO t_estimasi VALUES("EST_BR.061119.000078","2019-11-06 11:13:17","Pribadi","ANH208104102","2AZF382464","H 9354 BZ","CUST_BR.061119.000050","","","admin","409090.909","0","409090.909","0","0","0","409090.909","0","409090.909","0000-00-00 00:00:00","2019-11-08","1");
INSERT INTO t_estimasi VALUES("EST_BR.061119.000079","2019-11-06 11:22:30","Asuransi","MHKM5EA3JGK040163","1NRF206917","AD 8421 KT","CUST_BR.061119.000051","AHGI","","admin","4590909.0905","459090.9090500001","4131818.1814499996","0","0","0","4590909.0905","459090.9090500001","4131818.1814499996","0000-00-00 00:00:00","2019-11-23","1");
INSERT INTO t_estimasi VALUES("EST_BR.081019.000045","2019-10-08 09:26:58","Pribadi","MHRRM3850EJ453010","K24Z9-9427302","AD 7999 YP","CUST_BR.081019.000028","","","admin","3727272.7271","0","3727272.7271","0","0","0","3727272.7271","0","3727272.7271","0000-00-00 00:00:00","2019-10-31","1");
INSERT INTO t_estimasi VALUES("EST_BR.081119.000080","2019-11-08 08:19:09","Asuransi","MK2KRWPNUHJ003143","4N15UBT5090","AD 18 MS","CUST_BR.081119.000052","RAKSA","","admin","2909090.9089","290909.09089","2618181.8180099996","0","0","0","2909090.9089","290909.09089","2618181.8180099996","0000-00-00 00:00:00","2019-11-14","1");
INSERT INTO t_estimasi VALUES("EST_BR.091019.000046","2019-10-09 13:40:28","Asuransi","MRHDD2860DP410983","L13Z52201673","AD 8957 CP","CUST_BR.091019.000029","ACA","124596","admin","6318181.8105","631818.18105","5686363.629449999","2842290","142114.5","2700175.5","9160471.8105","773932.68105","8386539.129449999","2019-10-24 14:35:02","2019-10-31","1");
INSERT INTO t_estimasi VALUES("EST_BR.091019.000047","2019-10-09 14:15:45","Pribadi","MHFGB8EM0K0430380","GUN142R-MDTMYD","AD 8632 AX","CUST_BR.091019.000030","","","admin","545454.5454","0","545454.5454","0","0","0","545454.5454","0","545454.5454","0000-00-00 00:00:00","2019-10-12","1");
INSERT INTO t_estimasi VALUES("EST_BR.091019.000048","2019-10-09 14:23:09","Pribadi","WD21M73114","Z24975923Y","AD 8888 AT","CUST_BR.091019.000031","","","admin","636363.6362","0","636363.6362","0","0","0","636363.6362","0","636363.6362","0000-00-00 00:00:00","2019-10-16","1");
INSERT INTO t_estimasi VALUES("EST_BR.091019.000049","2019-10-09 14:30:56","Pribadi","WDB90665725781184","","B 7170 NAA","CUST_BR.091019.000032","","","admin","1181818.1817","0","1181818.1817","0","0","0","1181818.1817","0","1181818.1817","0000-00-00 00:00:00","2019-10-16","1");
INSERT INTO t_estimasi VALUES("EST_BR.101019.000050","2019-10-10 10:02:26","Asuransi","MK2NCWHANJJ003096","4A91DC9043","AD 9282 GR","CUST_BR.101019.000033","BCAI","52575","admin","1500000","150000","1350000","0","0","0","1500000","150000","1350000","0000-00-00 00:00:00","2019-10-12","1");
INSERT INTO t_estimasi VALUES("EST_BR.110919.000001","2019-09-11 13:41:19","Asuransi","MM6DJ2HAAHW323644","P520456689","AD 9130 U","CUST_BR.110919.000001","BCAI","50580","admin","3350000","335000","3015000","21075708","1053785.4","20021922.6","24425708","1388785.4","23036922.6","0000-00-00 00:00:00","2019-09-10","1");
INSERT INTO t_estimasi VALUES("EST_BR.111119.000081","2019-11-11 10:17:42","Pribadi","2C3CCAVG3CH289881","","B 1 FST","CUST_BR.061119.000050","","","admin","1499999.9999","149999.99999","1349999.99991","0","0","0","1499999.9999","149999.99999","1349999.99991","0000-00-00 00:00:00","2019-11-15","0");
INSERT INTO t_estimasi VALUES("EST_BR.111119.000082","2019-11-11 15:02:40","Asuransi","MHYKZE81SFJ307156","K14BT1180131","AD 8911 OA","CUST_BR.111119.000053","ABDA","35916","admin","318181.8181","0","318181.8181","0","0","0","318181.8181","0","318181.8181","0000-00-00 00:00:00","2019-11-15","1");
INSERT INTO t_estimasi VALUES("EST_BR.120919.000002","2019-09-12 09:05:01","Asuransi","MHRDD4730GJ602701","L15Z12418855","AD 8962 OH","CUST_BR.120919.000002","PANFIC","","admin","500000","60000","440000","1141000","57050","1083950","1641000","117050","1523950","0000-00-00 00:00:00","2019-09-11","1");
INSERT INTO t_estimasi VALUES("EST_BR.120919.000003","2019-09-12 10:17:47","Pribadi","MHK84DA1JGJ009188","","B 2320 BKG","CUST_BR.120919.000003","","","admin","999999.9","99999.98999999999","899999.9099999999","0","0","0","999999.9","99999.98999999999","899999.9099999999","0000-00-00 00:00:00","2019-09-06","1");
INSERT INTO t_estimasi VALUES("EST_BR.120919.000004","2019-09-12 11:18:01","Asuransi","KMHS381EMKU036101","G4KEJD008584","B 1200 KJL","CUST_BR.120919.000004","BCAI","22419","admin","5150000","0","5150000","0","0","0","5150000","0","5150000","0000-00-00 00:00:00","2019-09-14","1");
INSERT INTO t_estimasi VALUES("EST_BR.120919.000005","2019-09-12 13:15:06","Pribadi","MRHFD16408P811145","R18A13910567","AD 7135 WA","CUST_BR.120919.000005","","97611","admin","0","0","0","0","0","0","0","0","0","0000-00-00 00:00:00","2019-09-16","0");
INSERT INTO t_estimasi VALUES("EST_BR.120919.000006","2019-09-12 13:17:24","Pribadi","MRHFD16408P811145","R18A13910567","AD 7135 WA","CUST_BR.120919.000005","","97611","admin","1454545.4300000002","0","1454545.4300000002","0","0","0","1454545.4300000002","0","1454545.4300000002","0000-00-00 00:00:00","2019-09-17","1");
INSERT INTO t_estimasi VALUES("EST_BR.120919.000007","2019-09-12 13:30:17","Pribadi","MPBSXXMXKSFS23962","UEJAFS23962","B 805 PPA","CUST_BR.120919.000006","","","admin","1999999.9999","0","1999999.9999","0","0","0","1999999.9999","0","1999999.9999","0000-00-00 00:00:00","2019-09-14","1");
INSERT INTO t_estimasi VALUES("EST_BR.120919.000008","2019-09-12 14:02:48","Pribadi","MHFX542G7E2551701","2KDU448071","AD 8410 SU","CUST_BR.120919.000007","","119437","admin","1999999.9817999997","0","1999999.9817999997","0","0","0","1999999.9817999997","0","1999999.9817999997","0000-00-00 00:00:00","2019-09-17","1");
INSERT INTO t_estimasi VALUES("EST_BR.120919.000009","2019-09-12 14:46:40","Pribadi","MKTTB35NZDK000161","CTH036074","B 2981 TBG","CUST_BR.120919.000008","","","admin","1272727.2726","0","1272727.2726","0","0","0","1272727.2726","0","1272727.2726","0000-00-00 00:00:00","2019-09-18","1");
INSERT INTO t_estimasi VALUES("EST_BR.121019.000051","2019-10-12 10:15:27","Asuransi","MHKM5PA4JKK053247","2NRF848178","N 1183 BN","CUST_BR.130919.000009","","6495","admin","2050000","0","2050000","0","0","0","2050000","0","2050000","0000-00-00 00:00:00","2019-10-12","1");
INSERT INTO t_estimasi VALUES("EST_BR.121119.000083","2019-11-12 09:56:01","Asuransi","MHKM5EA2JGK010643","1NRF169970","H 8416 YZ","CUST_BR.180919.000018","MPM RENT","","admin","2840000","0","2840000","0","0","0","2840000","0","2840000","2019-11-22 09:22:50","2019-11-19","1");
INSERT INTO t_estimasi VALUES("EST_BR.121119.000084","2019-11-12 14:10:08","Asuransi","MHRDD1770FJ569934","L12B31481808","H 9147 GW","CUST_BR.121119.000054","ABDA","","admin","2913636.3630999997","0","2913636.3630999997","0","0","0","2913636.3630999997","0","2913636.3630999997","0000-00-00 00:00:00","2019-11-23","1");
INSERT INTO t_estimasi VALUES("EST_BR.130919.000010","2019-09-13 09:01:39","Asuransi","MHKM5EA2JJK045001","1NRF388289","B 1879 NRP","CUST_BR.130919.000009","MPM RENT","63227","admin","3405000","0","3405000","1614140","0","1614140","5019140","0","5019140","0000-00-00 00:00:00","2019-09-17","1");
INSERT INTO t_estimasi VALUES("EST_BR.130919.000011","2019-09-13 10:18:46","Asuransi","MHBG3CG1CFJ037920","HR15726860T","H 9028 MZ","CUST_BR.130919.000009","MPMI","","admin","1954545.4542","0","1954545.4542","0","0","0","1954545.4542","0","1954545.4542","0000-00-00 00:00:00","2019-09-17","1");
INSERT INTO t_estimasi VALUES("EST_BR.130919.000012","2019-09-13 10:43:02","Asuransi","MHML0PU39EK164458","4D56CKX5371","B 9998 NCD","CUST_BR.130919.000009","MPMI","","admin","704545.4543999999","0","704545.4543999999","677272.7272","33863.63636","643409.09084","1381818.1815999998","33863.63636","1347954.54524","0000-00-00 00:00:00","2019-09-19","1");
INSERT INTO t_estimasi VALUES("EST_BR.141019.000052","2019-10-14 15:16:30","Asuransi","MHKV3BA3JFK040265","K3MG60481","D 1687 ADY","CUST_BR.180919.000018","","","admin","1386363.6361","0","1386363.6361","0","0","0","1386363.6361","0","1386363.6361","0000-00-00 00:00:00","2019-10-14","1");
INSERT INTO t_estimasi VALUES("EST_BR.141119.000085","2019-11-14 09:59:13","Asuransi","MHKM5EA3JGK013284","1NRF123379","AD 9398 OS","CUST_BR.180919.000018","MPMR","","admin","3690000","0","3690000","369050","0","369050","4059050","0","4059050","2019-11-27 10:53:29","2019-11-21","1");
INSERT INTO t_estimasi VALUES("EST_BR.141119.000086","2019-11-14 10:38:39","Asuransi","MHKM5FA3JJK006191","2NRF682288","W 1985 VH","CUST_BR.180919.000018","MPM RENT","","admin","2370000","0","2370000","0","0","0","2370000","0","2370000","0000-00-00 00:00:00","2019-11-20","1");
INSERT INTO t_estimasi VALUES("EST_BR.151019.000053","2019-10-15 09:35:04","Pribadi","MHKG2CK2J7K000298","DAA8910","AD 8895 IM","CUST_BR.151019.000034","","159072","admin","1090909.0909","0","1090909.0909","0","0","0","1090909.0909","0","1090909.0909","0000-00-00 00:00:00","2019-10-19","1");
INSERT INTO t_estimasi VALUES("EST_BR.161019.000054","2019-10-16 11:07:42","Asuransi","MHKM5FA4JHK023595","2NRF584439","H 8732 LG","CUST_BR.130919.000009","MPMR","","admin","4678000","0","4678000","278300","0","278300","4956300","0","4956300","0000-00-00 00:00:00","2019-10-16","1");
INSERT INTO t_estimasi VALUES("EST_BR.161119.000087","2019-11-16 09:05:41","Asuransi","MHRRM1830EJ400292","R20A59423299","AD 8233 UA","CUST_BR.170919.000015","ABDA","","admin","3740909.0901999995","0","3740909.0901999995","0","0","0","3740909.0901999995","0","3740909.0901999995","0000-00-00 00:00:00","2019-11-23","0");
INSERT INTO t_estimasi VALUES("EST_BR.170919.000013","2019-09-17 09:27:31","Asuransi","MK2KRWFNUHJ001518","4N15UCA2499","AD 7162 MG","CUST_BR.170919.000010","MAG","","admin","600000","0","600000","0","0","0","600000","0","600000","0000-00-00 00:00:00","2019-09-17","1");
INSERT INTO t_estimasi VALUES("EST_BR.170919.000014","2019-09-17 10:50:02","Pribadi","TRUZZZ8N351012460","AUQ100543","B 1110 TB","CUST_BR.120919.000008","","","admin","909090.9016","0","909090.9016","0","0","0","909090.9016","0","909090.9016","0000-00-00 00:00:00","2019-05-13","1");
INSERT INTO t_estimasi VALUES("EST_BR.170919.000015","2019-09-17 11:08:09","Asuransi","KNABX512MDT572658","G4LADP051886","AD 8862 SU","CUST_BR.170919.000011","PANFIC","","admin","3300000","396000","2904000","0","0","0","3300000","396000","2904000","0000-00-00 00:00:00","2019-08-29","1");
INSERT INTO t_estimasi VALUES("EST_BR.170919.000016","2019-09-17 11:27:05","Asuransi","MHFJW8EM9H2326008","1TRA249648","AD-9099-NA","CUST_BR.170919.000016","ABDA","","admin","1181818.1815999998","0","1181818.1815999998","0","0","0","1181818.1815999998","0","1181818.1815999998","0000-00-00 00:00:00","2019-09-21","1");
INSERT INTO t_estimasi VALUES("EST_BR.170919.000017","2019-09-17 13:48:21","Asuransi","MNTFBUK13Z0078615","HR12396188B","DK 117 NO","CUST_BR.170919.000012","ACA","","admin","5272727.250699999","527272.72507","4745454.525629999","701800","35090","666710","5974527.250699999","562362.72507","5412164.525629999","0000-00-00 00:00:00","2019-08-29","1");
INSERT INTO t_estimasi VALUES("EST_BR.170919.000018","2019-09-17 14:22:42","Pribadi","MHL2100370L032752","1.12E+12","AD 800","CUST_BR.170919.000013","","","admin","727273","0","727273","0","0","0","727273","0","727273","0000-00-00 00:00:00","2019-09-17","1");
INSERT INTO t_estimasi VALUES("EST_BR.170919.000019","2019-09-17 15:36:53","Asuransi","MRHCR2640DF301194","K24W31102456","AD 7959 UA","CUST_BR.170919.000014","RAKSA","","admin","3372727.2399999998","0","3372727.2399999998","0","0","0","3372727.2399999998","0","3372727.2399999998","0000-00-00 00:00:00","2019-09-17","1");
INSERT INTO t_estimasi VALUES("EST_BR.171019.000055","2019-10-17 09:25:46","Pribadi","JHMRB3863CC330315","K24Z21721278","AD 9035 WB","CUST_BR.171019.000035","","","admin","1136363.6363","0","1136363.6363","0","0","0","1136363.6363","0","1136363.6363","0000-00-00 00:00:00","2019-10-22","1");
INSERT INTO t_estimasi VALUES("EST_BR.180919.000020","2019-09-18 09:07:20","Asuransi","MHRRM1830EJ400292","R20A59423299","AD 8233 UA","CUST_BR.170919.000015","ABDA","","admin","3881818.139999999","0","3881818.139999999","0","0","0","3881818.139999999","0","3881818.139999999","0000-00-00 00:00:00","2019-09-18","1");
INSERT INTO t_estimasi VALUES("EST_BR.180919.000021","2019-09-18 09:33:59","Pribadi","MHRRU1850GJ403947","L15Z61035321","AD 8734 BM","CUST_BR.180919.000017","","","admin","590909.0909","59090.90909","531818.18181","0","0","0","590909.0909","59090.90909","531818.18181","0000-00-00 00:00:00","2019-09-21","1");
INSERT INTO t_estimasi VALUES("EST_BR.180919.000022","2019-09-18 10:26:55","Asuransi","MHKB3BA1JJK053290","K3MH34206","AD 1892 UT","CUST_BR.180919.000018","MPMI","","admin","4724545.4535","0","4724545.4535","3229331","161466.55","3067864.45","7953876.4535","161466.55","7792409.9035","0000-00-00 00:00:00","2019-09-30","1");
INSERT INTO t_estimasi VALUES("EST_BR.191019.000056","2019-10-19 09:38:30","Asuransi","MHRRU5870JJ701702","R18ZE1153555","AD 9020 YT","CUST_BR.191019.000036","RAKSA","","admin","4431818.1814","443181.81814","3988636.3632599995","0","0","0","4431818.1814","443181.81814","3988636.3632599995","2019-10-28 10:06:06","2019-10-26","1");
INSERT INTO t_estimasi VALUES("EST_BR.191019.000057","2019-10-19 10:17:26","Pribadi","KMFGD27BP1K486126","D4BBY060651","B 9066 NE","CUST_BR.191019.000037","","","admin","2772727.2723999997","277272.72724000004","2495454.54516","0","0","0","2772727.2723999997","277272.72724000004","2495454.54516","0000-00-00 00:00:00","2019-10-31","0");
INSERT INTO t_estimasi VALUES("EST_BR.200919.000023","2019-09-20 13:30:07","Pribadi","MHFXR43G2D1010604","2KDU210880","AD 9163 NU","CUST_BR.200919.000019","","","admin","4727272.726700001","472727.27266999986","4254545.45403","552200","0","552200","5279472.726700001","472727.27266999986","4806745.45403","0000-00-00 00:00:00","2019-09-24","1");
INSERT INTO t_estimasi VALUES("EST_BR.201119.000088","2019-11-20 09:45:13","Asuransi","MHKM5EA3JHK078086","1NRF310742","W 1326 SZ","CUST_BR.180919.000018","MPMR","","admin","2065000","0","2065000","0","0","0","2065000","0","2065000","0000-00-00 00:00:00","2019-11-26","0");
INSERT INTO t_estimasi VALUES("EST_BR.211019.000058","2019-10-21 11:19:20","Asuransi","JTFSS22PXC0118822","2KD5962733","AD 1054 DB","CUST_BR.170919.000016","BCI","","admin","3681818.1816999996","0","3681818.1816999996","0","0","0","3681818.1816999996","0","3681818.1816999996","0000-00-00 00:00:00","2019-10-28","1");
INSERT INTO t_estimasi VALUES("EST_BR.211019.000059","2019-10-21 13:45:13","Pribadi","MHFXR42G2F0032001","2KDU706510","B 898 YY","CUST_BR.211019.000038","","","admin","590909.0909","0","590909.0909","0","0","0","590909.0909","0","590909.0909","0000-00-00 00:00:00","2019-10-25","1");
INSERT INTO t_estimasi VALUES("EST_BR.211019.000060","2019-10-21 15:38:43","Asuransi","MHKM5EB2JJK008569","1NRF430361","AD 8849 ES","CUST_BR.180919.000018","MPM RENT","","admin","1965000","0","1965000","0","0","0","1965000","0","1965000","0000-00-00 00:00:00","2019-10-26","1");
INSERT INTO t_estimasi VALUES("EST_BR.211119.000089","2019-11-21 08:43:49","Asuransi","MHBG3CG1FGJ044446","HR15733900T","B 1621 NOO","CUST_BR.180919.000018","MPMR","","admin","2975000","0","2975000","424589","0","424589","3399589","0","3399589","0000-00-00 00:00:00","2019-11-30","0");
INSERT INTO t_estimasi VALUES("EST_BR.221119.000090","2019-11-22 09:23:42","Asuransi","MHKM5EA2JGK010643","1NRF169970","H 8416 YZ","CUST_BR.180919.000018","","","admin","2840000","0","2840000","0","0","0","2840000","0","2840000","0000-00-00 00:00:00","2019-11-22","1");
INSERT INTO t_estimasi VALUES("EST_BR.221119.000091","2019-11-22 13:21:48","Asuransi","JTFSS22PXC0118822","2KD5962733","AD 1054 DB","CUST_BR.170919.000016","BCI","","admin","3272727.2726","0","3272727.2726","0","0","0","3272727.2726","0","3272727.2726","0000-00-00 00:00:00","2019-11-25","1");
INSERT INTO t_estimasi VALUES("EST_BR.230919.000024","2019-09-23 09:21:11","Asuransi","MALBL51CMHM266798","G4LCGU602848","AD 8434 JM","CUST_BR.230919.000020","RAKSA","","admin","3772727.2724","377272.7272399999","3395454.5451599997","838181.8181","41909.090905","796272.727195","4610909.0905","419181.8181449999","4191727.2723549996","0000-00-00 00:00:00","2019-09-23","1");
INSERT INTO t_estimasi VALUES("EST_BR.230919.000025","2019-09-23 09:29:58","Pribadi","ML320","","AD 8309 UA","CUST_BR.120919.000008","","","admin","909090.9","0","909090.9","0","0","0","909090.9","0","909090.9","0000-00-00 00:00:00","2019-09-23","1");
INSERT INTO t_estimasi VALUES("EST_BR.230919.000026","2019-09-23 10:53:30","Asuransi","KMHST81CMFU521288","G4KEFA665005","AD 7358 CU","CUST_BR.230919.000021","ACA","","admin","1613636.3635","161363.63635000002","1452272.7271499997","1992727.2727","99636.363635","1893090.909065","3606363.6362","260999.999985","3345363.6362149995","0000-00-00 00:00:00","2019-09-23","1");
INSERT INTO t_estimasi VALUES("EST_BR.231019.000061","2019-10-23 08:17:28","Pribadi","MHRGK5860EJ406777","L15Z51012175","AD 9073 VU","CUST_BR.231019.000039","","","admin","409090.909","0","409090.909","0","0","0","409090.909","0","409090.909","0000-00-00 00:00:00","2019-10-26","1");
INSERT INTO t_estimasi VALUES("EST_BR.231019.000062","2019-10-23 09:34:50","Pribadi","MHHVB19046K918142","","B 1 BEH","CUST_BR.231019.000040","","","admin","2818181.8105","0","2818181.8105","0","0","0","2818181.8105","0","2818181.8105","0000-00-00 00:00:00","2019-10-30","1");
INSERT INTO t_estimasi VALUES("EST_BR.231019.000063","2019-10-23 10:55:00","Asuransi","MHKM5EB3JFK001743","1NRF044111","AD 8463 OS","CUST_BR.180919.000018","MPMI","","admin","2886363.6358999996","0","2886363.6358999996","0","0","0","2886363.6358999996","0","2886363.6358999996","0000-00-00 00:00:00","2019-10-31","1");
INSERT INTO t_estimasi VALUES("EST_BR.231119.000092","2019-11-23 10:28:29","Pribadi","MHRDD1770GJ552867","L12B31494740","H 9400 Y","CUST_BR.231119.000056","","","admin","1727272.7271","172727.27271","1554545.45439","0","0","0","1727272.7271","172727.27271","1554545.45439","0000-00-00 00:00:00","2019-11-30","1");
INSERT INTO t_estimasi VALUES("EST_BR.240919.000027","2019-09-24 09:12:25","Asuransi","MHKM51A2JJK045001","1NRF388289","B 1879 NRP","CUST_BR.180919.000018","","","admin","0","0","0","400000","0","400000","400000","0","400000","0000-00-00 00:00:00","2019-09-24","1");
INSERT INTO t_estimasi VALUES("EST_BR.240919.000028","2019-09-24 14:43:16","Asuransi","MHFJW8EM9H2326008","1TRA249648","AD-9099-NA","CUST_BR.170919.000016","","","admin","1181818.1744","0","1181818.1744","0","0","0","1181818.1744","0","1181818.1744","2019-09-25 08:34:58","2019-09-24","1");
INSERT INTO t_estimasi VALUES("EST_BR.240919.000029","2019-09-24 15:05:31","Asuransi","MHKB3BA1JEK023277","ME00394","B 9705 NCD","CUST_BR.180919.000018","","","admin","659090.909","0","659090.909","0","0","0","659090.909","0","659090.909","0000-00-00 00:00:00","2019-09-24","1");
INSERT INTO t_estimasi VALUES("EST_BR.241019.000064","2019-10-24 13:50:50","Asuransi","MHRDD1850KJ914302","L12B32358620","AD 9234 AO","CUST_BR.241019.000041","PANFIC","","admin","4250000","510000","3740000","0","0","0","4250000","510000","3740000","0000-00-00 00:00:00","2019-10-31","1");
INSERT INTO t_estimasi VALUES("EST_BR.241019.000065","2019-10-24 14:40:09","Asuransi","MRHDD2860DP410983","L13Z52201673","AD 8957 CP","CUST_BR.091019.000029","ACA","124596","admin","6318181.8105","631818.18105","5686363.629449999","2842290","142114.5","2700175.5","9160471.8105","773932.68105","8386539.129449999","2019-10-24 15:03:54","2019-10-24","1");
INSERT INTO t_estimasi VALUES("EST_BR.241019.000066","2019-10-24 15:06:00","Asuransi","MRHDD2860DP410983","L13Z52201673","AD 8957 CP","CUST_BR.091019.000029","ACA","","admin","6318181.8105","631818.18105","5686363.629449999","2842290","142114.5","2700175.5","9160471.8105","773932.68105","8386539.129449999","0000-00-00 00:00:00","2019-10-24","1");
INSERT INTO t_estimasi VALUES("EST_BR.250919.000030","2019-09-25 08:27:33","Asuransi","MHFJW8EM9H2326008","1TRA249648","AD-9099-NA","CUST_BR.170919.000016","","","admin","1181818.1744","0","1181818.1744","0","0","0","1181818.1744","0","1181818.1744","2019-09-25 08:34:53","2019-09-25","1");
INSERT INTO t_estimasi VALUES("EST_BR.250919.000031","2019-09-25 08:35:21","Asuransi","MHFJW8EM9H2326008","1TRA249648","AD-9099-NA","CUST_BR.170919.000016","","","admin","1181818.1779999998","0","1181818.1779999998","0","0","0","1181818.1779999998","0","1181818.1779999998","0000-00-00 00:00:00","2019-09-25","1");
INSERT INTO t_estimasi VALUES("EST_BR.251019.000067","2019-10-25 09:46:13","Asuransi","MM6DJ2HAAHW323644","P520456689","AD 9130 U","CUST_BR.110919.000001","BCAI","","admin","750000","75000","675000","13499090","0","13499090","14249090","75000","14174090","0000-00-00 00:00:00","2019-10-26","0");
INSERT INTO t_estimasi VALUES("EST_BR.251119.000093","2019-11-25 09:55:20","Pribadi","MHRDD1850KJ913536","L12B32356662","AD 9189 WS","CUST_BR.251119.000057","","4054","admin","227272.7272","0","227272.7272","0","0","0","227272.7272","0","227272.7272","0000-00-00 00:00:00","2019-11-27","1");
INSERT INTO t_estimasi VALUES("EST_BR.251119.000094","2019-11-25 10:25:09","Asuransi","MHKM5EA3JHK071752","1NRF289885","B 1652 NRI","CUST_BR.180919.000018","MPMR","","admin","1960000","0","1960000","0","0","0","1960000","0","1960000","0000-00-00 00:00:00","2019-11-30","1");
INSERT INTO t_estimasi VALUES("EST_BR.251119.000095","2019-11-25 10:49:57","Asuransi","MHKM5EA2JJK047225","1NRF405315","B 1883 NRP","CUST_BR.180919.000018","MPMR","","admin","2035000","0","2035000","0","0","0","2035000","0","2035000","0000-00-00 00:00:00","2019-11-30","0");
INSERT INTO t_estimasi VALUES("EST_BR.251119.000096","2019-11-25 11:09:39","Asuransi","MHKM5EA2JGK008994","1NRF160311","AD 8944 OH","CUST_BR.180919.000018","MPMR","","admin","2140000","0","2140000","0","0","0","2140000","0","2140000","0000-00-00 00:00:00","2019-11-30","1");
INSERT INTO t_estimasi VALUES("EST_BR.251119.000097","2019-11-25 11:25:21","Asuransi","MHKM5EA2JGK009016","1NRF160459","H 8957 VZ","CUST_BR.180919.000018","MPMR","","admin","2625000","0","2625000","0","0","0","2625000","0","2625000","0000-00-00 00:00:00","2019-11-30","1");
INSERT INTO t_estimasi VALUES("EST_BR.251119.000098","2019-11-25 11:46:01","Asuransi","MHKM5EA2JGJ011939","1NRF102098","H 8847 UZ","CUST_BR.180919.000018","MPMR","","admin","2140000","0","2140000","0","0","0","2140000","0","2140000","0000-00-00 00:00:00","2019-11-30","1");
INSERT INTO t_estimasi VALUES("EST_BR.260919.000032","2019-09-26 08:54:57","Asuransi","MHML0PU39EK164458","4D56CKX5371","B 9998 NCD","CUST_BR.130919.000009","","","admin","704545.4543999999","0","704545.4543999999","677272.7272","33863.63636","643409.09084","1381818.1815999998","33863.63636","1347954.54524","0000-00-00 00:00:00","2019-09-26","1");
INSERT INTO t_estimasi VALUES("EST_BR.260919.000033","2019-09-26 10:03:26","Asuransi","MHKV3BA6JEK005986","MD82386","AD 9382 TU","CUST_BR.260919.000022","RAKSA","","admin","4227272.726900001","422727.27269","3804545.4542099996","0","0","0","4227272.726900001","422727.27269","3804545.4542099996","0000-00-00 00:00:00","2019-09-26","1");
INSERT INTO t_estimasi VALUES("EST_BR.261119.000099","2019-11-26 09:24:07","Pribadi","MHRRU1730HJ700850","L15Z6-1157592","K 9379 JK","CUST_BR.261119.000058","","","admin","727272.7272","63636.36363","663636.3635699999","0","0","0","727272.7272","63636.36363","663636.3635699999","0000-00-00 00:00:00","2019-11-30","1");
INSERT INTO t_estimasi VALUES("EST_BR.261119.000100","2019-11-26 09:31:21","Pribadi","MHKG2CJ2J7K009402","","AB 1608 GE","CUST_BR.261119.000059","","","admin","545454.5454","0","545454.5454","0","0","0","545454.5454","0","545454.5454","0000-00-00 00:00:00","2019-11-30","1");
INSERT INTO t_estimasi VALUES("EST_BR.261119.000101","2019-11-26 14:31:07","Pribadi","MHRGE8860CJ207037","L15A7-4758079","B 1371 VMI","CUST_BR.261119.000060","","","admin","181818.1818","0","181818.1818","0","0","0","181818.1818","0","181818.1818","0000-00-00 00:00:00","2019-11-26","1");
INSERT INTO t_estimasi VALUES("EST_BR.270919.000034","2019-09-27 13:28:53","Pribadi","1C4HJWK5XEL123984","EL123984","B 535 NNM","CUST_BR.120919.000008","","","admin","227272.7272","0","227272.7272","0","0","0","227272.7272","0","227272.7272","0000-00-00 00:00:00","2019-09-27","1");
INSERT INTO t_estimasi VALUES("EST_BR.270919.000035","2019-09-27 15:03:07","Pribadi","MRHGM2660AP021010","L15A72807386","AD 8181 RS","CUST_BR.270919.000023","","","admin","909090.909","0","909090.909","0","0","0","909090.909","0","909090.909","0000-00-00 00:00:00","2019-09-27","1");
INSERT INTO t_estimasi VALUES("EST_BR.270919.000036","2019-09-27 15:03:08","Asuransi","MHKV5EB2JJK004803","1NRF383974","H 8659 LR","CUST_BR.130919.000009","MPMR","","admin","3430000","0","3430000","1270500","0","1270500","4700500","0","4700500","0000-00-00 00:00:00","2019-09-27","1");
INSERT INTO t_estimasi VALUES("EST_BR.271119.000102","2019-11-27 10:53:51","Asuransi","MHKM5EA3JGK013284","1NRF123379","AD 9398 OS","CUST_BR.180919.000018","","","admin","3690000","0","3690000","369050","0","369050","4059050","0","4059050","0000-00-00 00:00:00","2019-11-27","1");
INSERT INTO t_estimasi VALUES("EST_BR.271119.000103","2019-11-27 14:48:52","Pribadi","MHRRU1850HJ606099","L15Z61132304","AD 9232 XA","CUST_BR.271119.000061","","","admin","136363.6363","0","136363.6363","0","0","0","136363.6363","0","136363.6363","0000-00-00 00:00:00","2019-11-30","1");
INSERT INTO t_estimasi VALUES("EST_BR.280919.000037","2019-09-28 08:58:46","Pribadi","MPBSXXMXKSFS23962","UEJAFS23962","B 805 PPA","CUST_BR.120919.000006","","","admin","590909.0909","0","590909.0909","0","0","0","590909.0909","0","590909.0909","0000-00-00 00:00:00","2019-09-28","1");
INSERT INTO t_estimasi VALUES("EST_BR.280919.000038","2019-09-28 10:29:31","Pribadi","MHRRD47504J002350","K20A51045207","AD 7796 HA","CUST_BR.280919.000024","","","admin","818181.8181","0","818181.8181","0","0","0","818181.8181","0","818181.8181","0000-00-00 00:00:00","2019-10-03","1");
INSERT INTO t_estimasi VALUES("EST_BR.281019.000068","2019-10-28 10:06:38","Asuransi","MHRRU5870JJ701702","R18ZE1153555","AD 9020 YT","CUST_BR.191019.000036","","","admin","4431818.1814","443181.81814","3988636.3632599995","0","0","0","4431818.1814","443181.81814","3988636.3632599995","0000-00-00 00:00:00","2019-10-28","1");
INSERT INTO t_estimasi VALUES("EST_BR.291019.000069","2019-10-29 13:46:55","Pribadi","MRHDD2860DP410983","L13Z52201673","AD 8957 CP","CUST_BR.091019.000029","","","admin","454545.4545","0","454545.4545","0","0","0","454545.4545","0","454545.4545","0000-00-00 00:00:00","2019-11-02","1");
INSERT INTO t_estimasi VALUES("EST_BR.291119.000104","2019-11-29 14:09:34","Asuransi","MHKM5EB3JKK027452","1NRG058240","AD 8570 CO","CUST_BR.180919.000018","MPMR","","admin","1275000","0","1275000","998250","0","998250","2273250","0","2273250","0000-00-00 00:00:00","2019-12-06","0");
INSERT INTO t_estimasi VALUES("EST_BR.300919.000039","2019-09-30 09:45:47","Asuransi","MHKM5EB3JJKO18884","1NRF394826","H 8713 LR","CUST_BR.130919.000009","MPMR","","admin","2889000","0","2889000","0","0","0","2889000","0","2889000","0000-00-00 00:00:00","2019-09-30","1");
INSERT INTO t_estimasi VALUES("EST_BR.301019.000070","2019-10-30 09:04:33","Asuransi","MHRDD1750GJ704521","L12B31812401","B 1357 KIT","CUST_BR.301019.000042","ABDA","22055","admin","522727.27259999997","0","522727.27259999997","2199709.0907","109985.454535","2089723.636165","2722436.3633","109985.454535","2612450.908765","0000-00-00 00:00:00","2019-11-02","1");
INSERT INTO t_estimasi VALUES("EST_BR.301119.000105","2019-11-30 11:44:07","Pribadi","MHRGE8860EJ301211","L15A77759928","AD 9290 ZS","CUST_BR.301119.000062","","","admin","500000","0","500000","0","0","0","500000","0","500000","0000-00-00 00:00:00","2019-11-30","1");



DROP TABLE t_estimasi_panel_detail;

CREATE TABLE `t_estimasi_panel_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_estimasi` varchar(20) NOT NULL,
  `fk_panel` varchar(20) NOT NULL,
  `harga_jual_panel` double DEFAULT NULL,
  `diskon_panel` float NOT NULL,
  `harga_diskon_panel` double DEFAULT NULL,
  `harga_total_estimasi_panel` double NOT NULL,
  `mark_panel` enum('0','1') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=590 DEFAULT CHARSET=latin1;

INSERT INTO t_estimasi_panel_detail VALUES("1","EST_BR.110919.000001","1020","550000","10","55000","495000","0");
INSERT INTO t_estimasi_panel_detail VALUES("2","EST_BR.110919.000001","1011","700000","10","70000","630000","");
INSERT INTO t_estimasi_panel_detail VALUES("4","EST_BR.110919.000001","1073","800000","10","80000","720000","0");
INSERT INTO t_estimasi_panel_detail VALUES("5","EST_BR.110919.000001","1022","600000","10","60000","540000","0");
INSERT INTO t_estimasi_panel_detail VALUES("6","EST_BR.110919.000001","1050","100000","10","10000","90000","0");
INSERT INTO t_estimasi_panel_detail VALUES("7","EST_BR.110919.000001","101","600000","10","60000","540000","0");
INSERT INTO t_estimasi_panel_detail VALUES("8","EST_BR.120919.000002","101","500000","12","60000","440000","0");
INSERT INTO t_estimasi_panel_detail VALUES("11","EST_BR.120919.000003","1076","590909","10","59090.9","531818.1","0");
INSERT INTO t_estimasi_panel_detail VALUES("12","EST_BR.120919.000003","1075","409090.9","10","40909.09","368181.81","0");
INSERT INTO t_estimasi_panel_detail VALUES("14","EST_BR.120919.000004","1075","500000","0","0","500000","0");
INSERT INTO t_estimasi_panel_detail VALUES("15","EST_BR.120919.000004","101","500000","0","0","500000","0");
INSERT INTO t_estimasi_panel_detail VALUES("16","EST_BR.120919.000004","1078","700000","0","0","700000","0");
INSERT INTO t_estimasi_panel_detail VALUES("17","EST_BR.120919.000004","1079","650000","0","0","650000","0");
INSERT INTO t_estimasi_panel_detail VALUES("18","EST_BR.120919.000004","1080","750000","0","0","750000","0");
INSERT INTO t_estimasi_panel_detail VALUES("19","EST_BR.120919.000004","1016","750000","0","0","750000","0");
INSERT INTO t_estimasi_panel_detail VALUES("20","EST_BR.120919.000004","1071","650000","0","0","650000","0");
INSERT INTO t_estimasi_panel_detail VALUES("21","EST_BR.120919.000004","1081","650000","0","0","650000","0");
INSERT INTO t_estimasi_panel_detail VALUES("22","EST_BR.120919.000006","101","409090.9","0","0","409090.9","0");
INSERT INTO t_estimasi_panel_detail VALUES("23","EST_BR.120919.000006","1075","409090.9","0","0","409090.9","0");
INSERT INTO t_estimasi_panel_detail VALUES("24","EST_BR.120919.000006","106","636363.63","0","0","636363.63","0");
INSERT INTO t_estimasi_panel_detail VALUES("25","EST_BR.120919.000007","1025","590909.0909","0","0","590909.0909","0");
INSERT INTO t_estimasi_panel_detail VALUES("26","EST_BR.120919.000007","1023","318181.8181","0","0","318181.8181","");
INSERT INTO t_estimasi_panel_detail VALUES("27","EST_BR.120919.000007","1077","590909.0909","0","0","590909.0909","0");
INSERT INTO t_estimasi_panel_detail VALUES("28","EST_BR.120919.000007","1011","500000","0","0","500000","0");
INSERT INTO t_estimasi_panel_detail VALUES("29","EST_BR.120919.000008","106","590909.0909","0","0","590909.0909","0");
INSERT INTO t_estimasi_panel_detail VALUES("30","EST_BR.120919.000008","1082","500000","0","0","500000","");
INSERT INTO t_estimasi_panel_detail VALUES("31","EST_BR.120919.000008","1041","90909.0909","0","0","90909.0909","");
INSERT INTO t_estimasi_panel_detail VALUES("32","EST_BR.120919.000008","1075","409090.9","0","0","409090.9","0");
INSERT INTO t_estimasi_panel_detail VALUES("33","EST_BR.120919.000008","101","409090.9","0","0","409090.9","0");
INSERT INTO t_estimasi_panel_detail VALUES("34","EST_BR.120919.000009","1016","636363.6363","0","0","636363.6363","");
INSERT INTO t_estimasi_panel_detail VALUES("35","EST_BR.120919.000009","1076","636363.6363","0","0","636363.6363","");
INSERT INTO t_estimasi_panel_detail VALUES("36","EST_BR.130919.000010","101","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("37","EST_BR.130919.000010","1071","410000","0","0","410000","1");
INSERT INTO t_estimasi_panel_detail VALUES("38","EST_BR.130919.000010","1047","650000","0","0","650000","0");
INSERT INTO t_estimasi_panel_detail VALUES("39","EST_BR.130919.000010","1016","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("40","EST_BR.130919.000010","1075","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("41","EST_BR.130919.000010","1025","500000","0","0","500000","1");
INSERT INTO t_estimasi_panel_detail VALUES("42","EST_BR.130919.000010","1077","425000","0","0","425000","1");
INSERT INTO t_estimasi_panel_detail VALUES("43","EST_BR.130919.000010","1022","295000","0","0","295000","");
INSERT INTO t_estimasi_panel_detail VALUES("44","EST_BR.130919.000011","1075","272727.2727","0","0","272727.2727","0");
INSERT INTO t_estimasi_panel_detail VALUES("45","EST_BR.130919.000011","1083","90909.0909","0","0","90909.0909","0");
INSERT INTO t_estimasi_panel_detail VALUES("46","EST_BR.130919.000011","1044","204545.4545","0","0","204545.4545","0");
INSERT INTO t_estimasi_panel_detail VALUES("47","EST_BR.130919.000011","1023","386363.6363","0","0","386363.6363","0");
INSERT INTO t_estimasi_panel_detail VALUES("48","EST_BR.130919.000011","1077","386363.6363","0","0","386363.6363","0");
INSERT INTO t_estimasi_panel_detail VALUES("49","EST_BR.130919.000011","1088","113636.3636","0","0","113636.3636","0");
INSERT INTO t_estimasi_panel_detail VALUES("50","EST_BR.130919.000011","1090","113636.3636","0","0","113636.3636","");
INSERT INTO t_estimasi_panel_detail VALUES("51","EST_BR.130919.000011","1082","386363.6363","0","0","386363.6363","1");
INSERT INTO t_estimasi_panel_detail VALUES("52","EST_BR.130919.000012","101","272727.2727","0","0","272727.2727","");
INSERT INTO t_estimasi_panel_detail VALUES("53","EST_BR.130919.000012","1016","386363.6363","0","0","386363.6363","");
INSERT INTO t_estimasi_panel_detail VALUES("54","EST_BR.130919.000012","1091","45454.5454","0","0","45454.5454","");
INSERT INTO t_estimasi_panel_detail VALUES("55","EST_BR.170919.000013","101","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("56","EST_BR.170919.000013","1092","100000","0","0","100000","0");
INSERT INTO t_estimasi_panel_detail VALUES("57","EST_BR.170919.000013","1081","150000","0","0","150000","0");
INSERT INTO t_estimasi_panel_detail VALUES("58","EST_BR.170919.000014","1087","227272.7272","0","0","227272.7272","0");
INSERT INTO t_estimasi_panel_detail VALUES("59","EST_BR.170919.000014","1086","227272.7272","0","0","227272.7272","0");
INSERT INTO t_estimasi_panel_detail VALUES("62","EST_BR.170919.000014","1085","227272.7272","0","0","227272.7272","0");
INSERT INTO t_estimasi_panel_detail VALUES("63","EST_BR.170919.000014","1044","227272.72","0","0","227272.72","0");
INSERT INTO t_estimasi_panel_detail VALUES("64","EST_BR.170919.000015","101","450000","12","54000","396000","");
INSERT INTO t_estimasi_panel_detail VALUES("65","EST_BR.170919.000015","1075","450000","12","54000","396000","");
INSERT INTO t_estimasi_panel_detail VALUES("66","EST_BR.170919.000015","1011","550000","12","66000","484000","");
INSERT INTO t_estimasi_panel_detail VALUES("67","EST_BR.170919.000015","1073","650000","12","78000","572000","");
INSERT INTO t_estimasi_panel_detail VALUES("68","EST_BR.170919.000015","1016","650000","12","78000","572000","");
INSERT INTO t_estimasi_panel_detail VALUES("69","EST_BR.170919.000015","1023","550000","12","66000","484000","");
INSERT INTO t_estimasi_panel_detail VALUES("70","EST_BR.170919.000016","1075","318181.8181","0","0","318181.8181","0");
INSERT INTO t_estimasi_panel_detail VALUES("71","EST_BR.170919.000016","1023","363636.3636","0","0","363636.3636","0");
INSERT INTO t_estimasi_panel_detail VALUES("72","EST_BR.170919.000016","1016","363636.3636","0","0","363636.3636","0");
INSERT INTO t_estimasi_panel_detail VALUES("73","EST_BR.170919.000016","1044","136363.6363","0","0","136363.6363","0");
INSERT INTO t_estimasi_panel_detail VALUES("75","EST_BR.170919.000017","1076","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_estimasi_panel_detail VALUES("76","EST_BR.170919.000017","1082","500000","10","50000","450000","");
INSERT INTO t_estimasi_panel_detail VALUES("77","EST_BR.170919.000017","101","454545.4545","10","45454.54545","409090.90905","");
INSERT INTO t_estimasi_panel_detail VALUES("78","EST_BR.170919.000017","1075","454545.45","10","45454.545","409090.905","");
INSERT INTO t_estimasi_panel_detail VALUES("79","EST_BR.170919.000017","1074","409090.9","10","40909.09","368181.81000000006","");
INSERT INTO t_estimasi_panel_detail VALUES("80","EST_BR.170919.000017","1035","136363.63","10","13636.363","122727.267","");
INSERT INTO t_estimasi_panel_detail VALUES("81","EST_BR.170919.000017","1073","590909.09","10","59090.909","531818.181","");
INSERT INTO t_estimasi_panel_detail VALUES("82","EST_BR.170919.000017","1016","590909.09","10","59090.909","531818.181","");
INSERT INTO t_estimasi_panel_detail VALUES("83","EST_BR.170919.000017","1086","227272.7272","10","22727.27272","204545.45448","");
INSERT INTO t_estimasi_panel_detail VALUES("84","EST_BR.170919.000018","1075","727273","0","0","727273","0");
INSERT INTO t_estimasi_panel_detail VALUES("85","EST_BR.170919.000017","1093","590909.0909","10","59090.90909","531818.18181","1");
INSERT INTO t_estimasi_panel_detail VALUES("86","EST_BR.170919.000017","1011","500000","10","50000","450000","1");
INSERT INTO t_estimasi_panel_detail VALUES("87","EST_BR.170919.000017","1085","227272.7272","10","22727.27272","204545.45448","1");
INSERT INTO t_estimasi_panel_detail VALUES("88","EST_BR.170919.000019","1082","363636.36","0","0","363636.36","0");
INSERT INTO t_estimasi_panel_detail VALUES("89","EST_BR.170919.000019","1076","363636.36","0","0","363636.36","1");
INSERT INTO t_estimasi_panel_detail VALUES("90","EST_BR.170919.000019","1093","363636.36","0","0","363636.36","1");
INSERT INTO t_estimasi_panel_detail VALUES("91","EST_BR.170919.000019","1075","272727.27","0","0","272727.27","0");
INSERT INTO t_estimasi_panel_detail VALUES("92","EST_BR.170919.000019","1023","363636.36","0","0","363636.36","0");
INSERT INTO t_estimasi_panel_detail VALUES("93","EST_BR.170919.000019","1016","363636.36","0","0","363636.36","0");
INSERT INTO t_estimasi_panel_detail VALUES("94","EST_BR.170919.000019","1022","254545.45","0","0","254545.45","1");
INSERT INTO t_estimasi_panel_detail VALUES("95","EST_BR.170919.000019","106","390909.09","0","0","390909.09","0");
INSERT INTO t_estimasi_panel_detail VALUES("96","EST_BR.170919.000019","101","272727.27","0","0","272727.27","0");
INSERT INTO t_estimasi_panel_detail VALUES("97","EST_BR.170919.000019","1011","363636.36","0","0","363636.36","0");
INSERT INTO t_estimasi_panel_detail VALUES("98","EST_BR.180919.000020","101","250000","0","0","250000","0");
INSERT INTO t_estimasi_panel_detail VALUES("99","EST_BR.180919.000020","1012","104545.45","0","0","104545.45","1");
INSERT INTO t_estimasi_panel_detail VALUES("100","EST_BR.180919.000020","109","318181.81","0","0","318181.81","0");
INSERT INTO t_estimasi_panel_detail VALUES("101","EST_BR.180919.000020","1059","90909.09","0","0","90909.09","0");
INSERT INTO t_estimasi_panel_detail VALUES("102","EST_BR.180919.000020","106","363636.36","0","0","363636.36","0");
INSERT INTO t_estimasi_panel_detail VALUES("103","EST_BR.180919.000020","1094","90909.09","0","0","90909.09","0");
INSERT INTO t_estimasi_panel_detail VALUES("104","EST_BR.180919.000021","1016","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_estimasi_panel_detail VALUES("105","EST_BR.180919.000020","1095","1136363.63","0","0","1136363.63","0");
INSERT INTO t_estimasi_panel_detail VALUES("106","EST_BR.180919.000020","1052","90909.09","0","0","90909.09","1");
INSERT INTO t_estimasi_panel_detail VALUES("107","EST_BR.180919.000020","1096","90909.09","0","0","90909.09","1");
INSERT INTO t_estimasi_panel_detail VALUES("108","EST_BR.180919.000020","1060","300000","0","0","300000","0");
INSERT INTO t_estimasi_panel_detail VALUES("109","EST_BR.180919.000020","1097","227272.72","0","0","227272.72","0");
INSERT INTO t_estimasi_panel_detail VALUES("110","EST_BR.180919.000020","1098","90909.09","0","0","90909.09","0");
INSERT INTO t_estimasi_panel_detail VALUES("111","EST_BR.180919.000020","1011","363636.36","0","0","363636.36","0");
INSERT INTO t_estimasi_panel_detail VALUES("112","EST_BR.180919.000020","1071","363636.36","0","0","363636.36","0");
INSERT INTO t_estimasi_panel_detail VALUES("113","EST_BR.180919.000022","101","272727.2727","0","0","272727.2727","");
INSERT INTO t_estimasi_panel_detail VALUES("114","EST_BR.180919.000022","1011","386363.6363","0","0","386363.6363","");
INSERT INTO t_estimasi_panel_detail VALUES("115","EST_BR.180919.000022","1013","181818.1818","0","0","181818.1818","");
INSERT INTO t_estimasi_panel_detail VALUES("116","EST_BR.180919.000022","1073","386363.6363","0","0","386363.6363","");
INSERT INTO t_estimasi_panel_detail VALUES("118","EST_BR.180919.000022","1067","227272.7272","0","0","227272.7272","");
INSERT INTO t_estimasi_panel_detail VALUES("119","EST_BR.180919.000022","1045","68181.8181","0","0","68181.8181","");
INSERT INTO t_estimasi_panel_detail VALUES("120","EST_BR.180919.000022","1077","386363.6363","0","0","386363.6363","");
INSERT INTO t_estimasi_panel_detail VALUES("121","EST_BR.180919.000022","1100","68181.8181","0","0","68181.8181","");
INSERT INTO t_estimasi_panel_detail VALUES("122","EST_BR.180919.000022","1023","386363.6363","0","0","386363.6363","");
INSERT INTO t_estimasi_panel_detail VALUES("123","EST_BR.180919.000022","1103","65454.5454","0","0","65454.5454","");
INSERT INTO t_estimasi_panel_detail VALUES("124","EST_BR.180919.000022","1075","272727.2727","0","0","272727.2727","");
INSERT INTO t_estimasi_panel_detail VALUES("125","EST_BR.180919.000022","1102","136363.6363","0","0","136363.6363","");
INSERT INTO t_estimasi_panel_detail VALUES("126","EST_BR.180919.000022","1025","409090.909","0","0","409090.909","");
INSERT INTO t_estimasi_panel_detail VALUES("127","EST_BR.180919.000022","1044","204545.4545","0","0","204545.4545","");
INSERT INTO t_estimasi_panel_detail VALUES("128","EST_BR.180919.000022","1076","386363.6363","0","0","386363.6363","");
INSERT INTO t_estimasi_panel_detail VALUES("129","EST_BR.180919.000022","1082","386363.6363","0","0","386363.6363","");
INSERT INTO t_estimasi_panel_detail VALUES("130","EST_BR.180919.000022","1074","227272.7272","0","0","227272.7272","");
INSERT INTO t_estimasi_panel_detail VALUES("131","EST_BR.200919.000023","106","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_estimasi_panel_detail VALUES("132","EST_BR.200919.000023","101","454545.4545","10","45454.54545","409090.90905","");
INSERT INTO t_estimasi_panel_detail VALUES("133","EST_BR.200919.000023","1071","500000","10","50000","450000","");
INSERT INTO t_estimasi_panel_detail VALUES("134","EST_BR.200919.000023","1052","136363.6363","10","13636.36363","122727.27267","0");
INSERT INTO t_estimasi_panel_detail VALUES("135","EST_BR.200919.000023","1096","136363.6363","10","13636.36363","122727.27267","0");
INSERT INTO t_estimasi_panel_detail VALUES("136","EST_BR.200919.000023","1011","500000","10","50000","450000","0");
INSERT INTO t_estimasi_panel_detail VALUES("137","EST_BR.200919.000023","1037","272727.2727","10","27272.72727","245454.54543","");
INSERT INTO t_estimasi_panel_detail VALUES("138","EST_BR.200919.000023","1058","181818.1818","10","18181.81818","163636.36362","0");
INSERT INTO t_estimasi_panel_detail VALUES("139","EST_BR.200919.000023","1104","181818.1818","10","18181.81818","163636.36362","0");
INSERT INTO t_estimasi_panel_detail VALUES("140","EST_BR.200919.000023","1060","318181.8181","10","31818.18181","286363.63629","0");
INSERT INTO t_estimasi_panel_detail VALUES("141","EST_BR.200919.000023","105","272727.2727","10","27272.72727","245454.54542999997","0");
INSERT INTO t_estimasi_panel_detail VALUES("142","EST_BR.200919.000023","1053","272727.2727","10","27272.72727","245454.54542999997","0");
INSERT INTO t_estimasi_panel_detail VALUES("143","EST_BR.200919.000023","1072","500000","10","50000","450000","0");
INSERT INTO t_estimasi_panel_detail VALUES("144","EST_BR.200919.000023","1106","136363.6363","10","13636.36363","122727.27267","0");
INSERT INTO t_estimasi_panel_detail VALUES("145","EST_BR.200919.000023","1107","136363.6363","10","13636.36363","122727.27267","0");
INSERT INTO t_estimasi_panel_detail VALUES("146","EST_BR.200919.000023","1108","136363.6363","10","13636.36363","122727.27267","0");
INSERT INTO t_estimasi_panel_detail VALUES("147","EST_BR.230919.000024","101","409090.909","10","40909.0909","368181.8181","0");
INSERT INTO t_estimasi_panel_detail VALUES("148","EST_BR.230919.000025","101","454545.45","0","0","454545.45","0");
INSERT INTO t_estimasi_panel_detail VALUES("149","EST_BR.230919.000025","1075","454545.45","0","0","454545.45","0");
INSERT INTO t_estimasi_panel_detail VALUES("150","EST_BR.230919.000024","1071","500000","10","50000","450000","1");
INSERT INTO t_estimasi_panel_detail VALUES("151","EST_BR.230919.000024","1019","818181.8181","10","81818.18181","736363.63629","0");
INSERT INTO t_estimasi_panel_detail VALUES("152","EST_BR.230919.000024","1067","454545.4545","10","45454.54545","409090.90905","0");
INSERT INTO t_estimasi_panel_detail VALUES("153","EST_BR.230919.000024","1075","409090.909","10","40909.0909","368181.8181","0");
INSERT INTO t_estimasi_panel_detail VALUES("154","EST_BR.230919.000024","1023","500000","10","50000","450000","1");
INSERT INTO t_estimasi_panel_detail VALUES("155","EST_BR.230919.000024","1016","590909.0909","10","59090.90909","531818.18181","0");
INSERT INTO t_estimasi_panel_detail VALUES("156","EST_BR.230919.000024","1050","90909.0909","10","9090.90909","81818.18181","0");
INSERT INTO t_estimasi_panel_detail VALUES("157","EST_BR.230919.000026","1082","545454.5454","10","54545.45454","490909.09085999994","");
INSERT INTO t_estimasi_panel_detail VALUES("158","EST_BR.230919.000026","1071","545454.5454","10","54545.45454","490909.09085999994","");
INSERT INTO t_estimasi_panel_detail VALUES("159","EST_BR.230919.000026","101","500000","10","50000","450000","");
INSERT INTO t_estimasi_panel_detail VALUES("160","EST_BR.240919.000028","1075","318181.8181","0","0","318181.8181","0");
INSERT INTO t_estimasi_panel_detail VALUES("161","EST_BR.240919.000028","1023","363636.36","0","0","363636.36","0");
INSERT INTO t_estimasi_panel_detail VALUES("162","EST_BR.240919.000028","1016","363636.36","0","0","363636.36","0");
INSERT INTO t_estimasi_panel_detail VALUES("163","EST_BR.240919.000028","1044","136363.6363","0","0","136363.6363","0");
INSERT INTO t_estimasi_panel_detail VALUES("164","EST_BR.240919.000029","101","272727.2727","0","0","272727.2727","0");
INSERT INTO t_estimasi_panel_detail VALUES("165","EST_BR.240919.000029","1071","386363.6363","0","0","386363.6363","0");
INSERT INTO t_estimasi_panel_detail VALUES("166","EST_BR.250919.000030","1075","318181.8181","0","0","318181.8181","0");
INSERT INTO t_estimasi_panel_detail VALUES("167","EST_BR.250919.000030","1023","363636.36","0","0","363636.36","0");
INSERT INTO t_estimasi_panel_detail VALUES("168","EST_BR.250919.000030","1016","363636.36","0","0","363636.36","1");
INSERT INTO t_estimasi_panel_detail VALUES("169","EST_BR.250919.000030","1044","136363.6363","0","0","136363.6363","0");
INSERT INTO t_estimasi_panel_detail VALUES("170","EST_BR.250919.000031","1075","318181.8181","0","0","318181.8181","0");
INSERT INTO t_estimasi_panel_detail VALUES("171","EST_BR.250919.000031","1023","363636.3636","0","0","363636.3636","0");
INSERT INTO t_estimasi_panel_detail VALUES("172","EST_BR.250919.000031","1016","363636.36","0","0","363636.36","1");
INSERT INTO t_estimasi_panel_detail VALUES("173","EST_BR.250919.000031","1044","136363.6363","0","0","136363.6363","0");
INSERT INTO t_estimasi_panel_detail VALUES("174","EST_BR.260919.000032","1091","45454.5454","0","0","45454.5454","0");
INSERT INTO t_estimasi_panel_detail VALUES("175","EST_BR.260919.000032","101","272727.2727","0","0","272727.2727","0");
INSERT INTO t_estimasi_panel_detail VALUES("176","EST_BR.260919.000032","1093","386363.6363","0","0","386363.6363","0");
INSERT INTO t_estimasi_panel_detail VALUES("177","EST_BR.260919.000033","101","409090.909","10","40909.0909","368181.8181","0");
INSERT INTO t_estimasi_panel_detail VALUES("178","EST_BR.260919.000033","1075","409090.909","10","40909.0909","368181.8181","");
INSERT INTO t_estimasi_panel_detail VALUES("179","EST_BR.260919.000033","1071","500000","10","50000","450000","0");
INSERT INTO t_estimasi_panel_detail VALUES("181","EST_BR.260919.000033","106","590909.0909","10","59090.90909","531818.18181","1");
INSERT INTO t_estimasi_panel_detail VALUES("182","EST_BR.260919.000033","1023","500000","10","50000","450000","0");
INSERT INTO t_estimasi_panel_detail VALUES("183","EST_BR.260919.000033","1025","590909.0909","10","59090.90909","531818.18181","1");
INSERT INTO t_estimasi_panel_detail VALUES("184","EST_BR.260919.000033","1093","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_estimasi_panel_detail VALUES("185","EST_BR.260919.000033","1109","272727.2727","10","27272.72727","245454.54543","0");
INSERT INTO t_estimasi_panel_detail VALUES("186","EST_BR.260919.000033","1110","227272.7272","10","22727.27272","204545.45448","0");
INSERT INTO t_estimasi_panel_detail VALUES("187","EST_BR.260919.000033","1102","136363.6363","10","13636.36363","122727.27267","0");
INSERT INTO t_estimasi_panel_detail VALUES("188","EST_BR.270919.000034","1087","227272.7272","0","0","227272.7272","0");
INSERT INTO t_estimasi_panel_detail VALUES("189","EST_BR.270919.000035","1075","409090.909","0","0","409090.909","0");
INSERT INTO t_estimasi_panel_detail VALUES("190","EST_BR.270919.000035","1082","500000","0","0","500000","0");
INSERT INTO t_estimasi_panel_detail VALUES("191","EST_BR.270919.000036","101","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("192","EST_BR.270919.000036","1093","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("193","EST_BR.270919.000036","1076","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("194","EST_BR.270919.000036","1074","295000","0","0","295000","");
INSERT INTO t_estimasi_panel_detail VALUES("195","EST_BR.270919.000036","1077","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("196","EST_BR.270919.000036","1011","410000","0","0","410000","0");
INSERT INTO t_estimasi_panel_detail VALUES("197","EST_BR.270919.000036","1022","295000","0","0","295000","1");
INSERT INTO t_estimasi_panel_detail VALUES("198","EST_BR.270919.000036","106","455000","0","0","455000","1");
INSERT INTO t_estimasi_panel_detail VALUES("199","EST_BR.270919.000036","1075","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("200","EST_BR.280919.000037","1076","590909.0909","0","0","590909.0909","");
INSERT INTO t_estimasi_panel_detail VALUES("201","EST_BR.280919.000038","1076","681818.1818","0","0","681818.1818","");
INSERT INTO t_estimasi_panel_detail VALUES("202","EST_BR.300919.000039","101","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("203","EST_BR.300919.000039","1075","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("204","EST_BR.300919.000039","1093","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("205","EST_BR.300919.000039","1076","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("206","EST_BR.300919.000039","1082","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("207","EST_BR.300919.000039","1022","295000","0","0","295000","0");
INSERT INTO t_estimasi_panel_detail VALUES("208","EST_BR.300919.000039","1077","425000","0","0","425000","1");
INSERT INTO t_estimasi_panel_detail VALUES("209","EST_BR.300919.000039","1089","97000","0","0","97000","");
INSERT INTO t_estimasi_panel_detail VALUES("210","EST_BR.300919.000039","1041","97000","0","0","97000","");
INSERT INTO t_estimasi_panel_detail VALUES("211","EST_BR.011019.000040","106","500000","0","0","500000","");
INSERT INTO t_estimasi_panel_detail VALUES("212","EST_BR.011019.000040","1096","75000","0","0","75000","");
INSERT INTO t_estimasi_panel_detail VALUES("213","EST_BR.011019.000040","1052","75000","0","0","75000","");
INSERT INTO t_estimasi_panel_detail VALUES("214","EST_BR.011019.000040","1071","450000","0","0","450000","");
INSERT INTO t_estimasi_panel_detail VALUES("215","EST_BR.011019.000040","1011","450000","0","0","450000","");
INSERT INTO t_estimasi_panel_detail VALUES("216","EST_BR.011019.000040","109","150000","0","0","150000","");
INSERT INTO t_estimasi_panel_detail VALUES("217","EST_BR.011019.000040","105","175000","0","0","175000","");
INSERT INTO t_estimasi_panel_detail VALUES("218","EST_BR.011019.000040","1053","150000","0","0","150000","");
INSERT INTO t_estimasi_panel_detail VALUES("219","EST_BR.011019.000040","1054","150000","0","0","150000","");
INSERT INTO t_estimasi_panel_detail VALUES("220","EST_BR.011019.000040","1073","450000","0","0","450000","");
INSERT INTO t_estimasi_panel_detail VALUES("221","EST_BR.031019.000041","1011","500000","10","50000","450000","");
INSERT INTO t_estimasi_panel_detail VALUES("222","EST_BR.031019.000041","101","409090.909","10","40909.0909","368181.8181","");
INSERT INTO t_estimasi_panel_detail VALUES("223","EST_BR.031019.000041","1109","272727.2727","10","27272.72727","245454.54543","");
INSERT INTO t_estimasi_panel_detail VALUES("224","EST_BR.031019.000041","1111","181818.1818","10","18181.81818","163636.36362","");
INSERT INTO t_estimasi_panel_detail VALUES("225","EST_BR.031019.000042","101","454545.4545","0","0","454545.4545","0");
INSERT INTO t_estimasi_panel_detail VALUES("226","EST_BR.041019.000043","1093","636363.6363","0","0","636363.6363","");
INSERT INTO t_estimasi_panel_detail VALUES("227","EST_BR.041019.000043","1076","636363.6363","0","0","636363.6363","");
INSERT INTO t_estimasi_panel_detail VALUES("228","EST_BR.051019.000044","101","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("229","EST_BR.051019.000044","1075","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("230","EST_BR.051019.000044","1076","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("231","EST_BR.051019.000044","1082","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("232","EST_BR.051019.000044","1112","90000","0","0","90000","0");
INSERT INTO t_estimasi_panel_detail VALUES("233","EST_BR.051019.000044","1011","410000","0","0","410000","0");
INSERT INTO t_estimasi_panel_detail VALUES("234","EST_BR.081019.000045","1055","272727.2727","0","0","272727.2727","0");
INSERT INTO t_estimasi_panel_detail VALUES("235","EST_BR.081019.000045","1053","272727.2727","0","0","272727.2727","0");
INSERT INTO t_estimasi_panel_detail VALUES("236","EST_BR.081019.000045","105","272727.2727","0","0","272727.2727","0");
INSERT INTO t_estimasi_panel_detail VALUES("237","EST_BR.081019.000045","1072","500000","0","0","500000","");
INSERT INTO t_estimasi_panel_detail VALUES("238","EST_BR.081019.000045","1017","363636.3636","0","0","363636.3636","");
INSERT INTO t_estimasi_panel_detail VALUES("239","EST_BR.081019.000045","1071","500000","0","0","500000","");
INSERT INTO t_estimasi_panel_detail VALUES("240","EST_BR.081019.000045","1093","590909.0909","0","0","590909.0909","");
INSERT INTO t_estimasi_panel_detail VALUES("241","EST_BR.081019.000045","1058","181818.1818","0","0","181818.1818","");
INSERT INTO t_estimasi_panel_detail VALUES("242","EST_BR.081019.000045","1104","181818.1818","0","0","181818.1818","");
INSERT INTO t_estimasi_panel_detail VALUES("243","EST_BR.081019.000045","1047","590909.0909","0","0","590909.0909","");
INSERT INTO t_estimasi_panel_detail VALUES("247","EST_BR.091019.000046","1071","500000","10","50000","450000","");
INSERT INTO t_estimasi_panel_detail VALUES("248","EST_BR.091019.000046","101","454545.4545","10","45454.54545","409090.90905","");
INSERT INTO t_estimasi_panel_detail VALUES("249","EST_BR.091019.000046","1011","500000","10","50000","450000","");
INSERT INTO t_estimasi_panel_detail VALUES("250","EST_BR.091019.000046","1073","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_estimasi_panel_detail VALUES("251","EST_BR.091019.000046","1016","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_estimasi_panel_detail VALUES("252","EST_BR.091019.000046","1022","409090.909","10","40909.0909","368181.8181","");
INSERT INTO t_estimasi_panel_detail VALUES("253","EST_BR.091019.000046","1023","500000","10","50000","450000","");
INSERT INTO t_estimasi_panel_detail VALUES("254","EST_BR.091019.000046","1044","227272.72","10","22727.272","204545.448","");
INSERT INTO t_estimasi_panel_detail VALUES("255","EST_BR.091019.000046","1093","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_estimasi_panel_detail VALUES("256","EST_BR.091019.000046","1076","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_estimasi_panel_detail VALUES("257","EST_BR.091019.000046","1082","500000","10","50000","450000","");
INSERT INTO t_estimasi_panel_detail VALUES("258","EST_BR.091019.000046","1074","409090.909","10","40909.0909","368181.8181","");
INSERT INTO t_estimasi_panel_detail VALUES("259","EST_BR.091019.000046","1085","227272.7272","10","22727.27272","204545.45448","");
INSERT INTO t_estimasi_panel_detail VALUES("260","EST_BR.091019.000046","1086","227272.7272","10","22727.27272","204545.45448","");
INSERT INTO t_estimasi_panel_detail VALUES("261","EST_BR.091019.000047","1075","545454.5454","0","0","545454.5454","");
INSERT INTO t_estimasi_panel_detail VALUES("262","EST_BR.091019.000048","1115","318181.8181","0","0","318181.8181","");
INSERT INTO t_estimasi_panel_detail VALUES("263","EST_BR.091019.000048","1114","318181.8181","0","0","318181.8181","");
INSERT INTO t_estimasi_panel_detail VALUES("264","EST_BR.091019.000049","101","454545.4545","0","0","454545.4545","0");
INSERT INTO t_estimasi_panel_detail VALUES("265","EST_BR.091019.000049","1109","227272.7272","0","0","227272.7272","");
INSERT INTO t_estimasi_panel_detail VALUES("266","EST_BR.101019.000050","1075","500000","10","50000","450000","");
INSERT INTO t_estimasi_panel_detail VALUES("267","EST_BR.101019.000050","1025","650000","10","65000","585000","");
INSERT INTO t_estimasi_panel_detail VALUES("270","EST_BR.101019.000050","1116","350000","10","35000","315000","");
INSERT INTO t_estimasi_panel_detail VALUES("273","EST_BR.230919.000026","1117","22727.2727","10","2272.72727","20454.54543","");
INSERT INTO t_estimasi_panel_detail VALUES("274","EST_BR.121019.000051","101","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("275","EST_BR.121019.000051","1075","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("276","EST_BR.121019.000051","1076","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("277","EST_BR.121019.000051","1082","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("278","EST_BR.121019.000051","1112","90000","0","0","90000","0");
INSERT INTO t_estimasi_panel_detail VALUES("279","EST_BR.121019.000051","1011","410000","0","0","410000","1");
INSERT INTO t_estimasi_panel_detail VALUES("280","EST_BR.141019.000052","1075","272727.2727","0","0","272727.2727","0");
INSERT INTO t_estimasi_panel_detail VALUES("281","EST_BR.141019.000052","1102","113636.3636","0","0","113636.3636","0");
INSERT INTO t_estimasi_panel_detail VALUES("282","EST_BR.141019.000052","1074","227272.7272","0","0","227272.7272","0");
INSERT INTO t_estimasi_panel_detail VALUES("283","EST_BR.141019.000052","1076","386363.6363","0","0","386363.6363","0");
INSERT INTO t_estimasi_panel_detail VALUES("284","EST_BR.141019.000052","1082","386363.6363","0","0","386363.6363","0");
INSERT INTO t_estimasi_panel_detail VALUES("285","EST_BR.151019.000053","1082","500000","0","0","500000","0");
INSERT INTO t_estimasi_panel_detail VALUES("286","EST_BR.151019.000053","1076","590909.0909","0","0","590909.0909","0");
INSERT INTO t_estimasi_panel_detail VALUES("287","EST_BR.161019.000054","1025","1000000","0","0","1000000","0");
INSERT INTO t_estimasi_panel_detail VALUES("288","EST_BR.161019.000054","1075","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("289","EST_BR.161019.000054","1026","365000","0","0","365000","0");
INSERT INTO t_estimasi_panel_detail VALUES("290","EST_BR.161019.000054","1118","289000","0","0","289000","0");
INSERT INTO t_estimasi_panel_detail VALUES("291","EST_BR.161019.000054","101","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("292","EST_BR.161019.000054","1071","410000","0","0","410000","0");
INSERT INTO t_estimasi_panel_detail VALUES("293","EST_BR.161019.000054","1093","425000","0","0","425000","1");
INSERT INTO t_estimasi_panel_detail VALUES("294","EST_BR.161019.000054","1011","410000","0","0","410000","0");
INSERT INTO t_estimasi_panel_detail VALUES("295","EST_BR.161019.000054","1073","425000","0","0","425000","");
INSERT INTO t_estimasi_panel_detail VALUES("296","EST_BR.161019.000054","1119","289000","0","0","289000","0");
INSERT INTO t_estimasi_panel_detail VALUES("297","EST_BR.161019.000054","1030","365000","0","0","365000","0");
INSERT INTO t_estimasi_panel_detail VALUES("298","EST_BR.171019.000055","106","681818.1818","0","0","681818.1818","");
INSERT INTO t_estimasi_panel_detail VALUES("299","EST_BR.171019.000055","101","454545.4545","0","0","454545.4545","");
INSERT INTO t_estimasi_panel_detail VALUES("300","EST_BR.091019.000049","1071","500000","0","0","500000","0");
INSERT INTO t_estimasi_panel_detail VALUES("301","EST_BR.191019.000056","101","409090.909","10","40909.0909","368181.8181","");
INSERT INTO t_estimasi_panel_detail VALUES("302","EST_BR.191019.000056","1109","272727.2727","10","27272.72727","245454.54542999997","");
INSERT INTO t_estimasi_panel_detail VALUES("303","EST_BR.191019.000056","1120","136363.6363","10","13636.36363","122727.27267","");
INSERT INTO t_estimasi_panel_detail VALUES("304","EST_BR.191019.000056","1071","500000","10","50000","450000","");
INSERT INTO t_estimasi_panel_detail VALUES("305","EST_BR.191019.000056","1093","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_estimasi_panel_detail VALUES("306","EST_BR.191019.000056","1076","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_estimasi_panel_detail VALUES("307","EST_BR.191019.000056","1121","272727.2727","10","27272.72727","245454.54542999997","");
INSERT INTO t_estimasi_panel_detail VALUES("308","EST_BR.191019.000056","1075","409090.909","10","40909.0909","368181.8181","");
INSERT INTO t_estimasi_panel_detail VALUES("309","EST_BR.191019.000056","102","159090.909","10","15909.0909","143181.8181","");
INSERT INTO t_estimasi_panel_detail VALUES("310","EST_BR.191019.000056","1023","500000","10","50000","450000","");
INSERT INTO t_estimasi_panel_detail VALUES("311","EST_BR.191019.000056","1016","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_estimasi_panel_detail VALUES("312","EST_BR.191019.000057","1122","636363.6363","10","63636.36363","572727.27267","0");
INSERT INTO t_estimasi_panel_detail VALUES("313","EST_BR.191019.000057","101","500000","10","50000","450000","0");
INSERT INTO t_estimasi_panel_detail VALUES("314","EST_BR.191019.000057","106","636363.6363","10","63636.36363","572727.27267","0");
INSERT INTO t_estimasi_panel_detail VALUES("315","EST_BR.191019.000057","1124","159090.909","10","15909.0909","143181.8181","0");
INSERT INTO t_estimasi_panel_detail VALUES("316","EST_BR.191019.000057","1123","159090.909","10","15909.0909","143181.8181","0");
INSERT INTO t_estimasi_panel_detail VALUES("317","EST_BR.191019.000057","1125","681818.1818","10","68181.81818","613636.36362","");
INSERT INTO t_estimasi_panel_detail VALUES("318","EST_BR.280919.000038","1041","136363.6363","0","0","136363.6363","0");
INSERT INTO t_estimasi_panel_detail VALUES("319","EST_BR.180919.000022","1047","272727.2727","0","0","272727.2727","0");
INSERT INTO t_estimasi_panel_detail VALUES("320","EST_BR.211019.000058","1125","1363636.3636","0","0","1363636.3636","");
INSERT INTO t_estimasi_panel_detail VALUES("321","EST_BR.211019.000058","1076","363636.3636","0","0","363636.3636","1");
INSERT INTO t_estimasi_panel_detail VALUES("322","EST_BR.211019.000058","1019","1590909.0909","0","0","1590909.0909","");
INSERT INTO t_estimasi_panel_detail VALUES("323","EST_BR.211019.000058","1017","363636.3636","0","0","363636.3636","1");
INSERT INTO t_estimasi_panel_detail VALUES("324","EST_BR.211019.000059","106","590909.0909","0","0","590909.0909","0");
INSERT INTO t_estimasi_panel_detail VALUES("325","EST_BR.211019.000060","106","455000","0","0","455000","0");
INSERT INTO t_estimasi_panel_detail VALUES("326","EST_BR.211019.000060","101","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("327","EST_BR.211019.000060","1075","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("328","EST_BR.211019.000060","1074","295000","0","0","295000","0");
INSERT INTO t_estimasi_panel_detail VALUES("329","EST_BR.211019.000060","1082","425000","0","0","425000","1");
INSERT INTO t_estimasi_panel_detail VALUES("330","EST_BR.211019.000060","1126","90000","0","0","90000","0");
INSERT INTO t_estimasi_panel_detail VALUES("331","EST_BR.231019.000061","101","409090.909","0","0","409090.909","0");
INSERT INTO t_estimasi_panel_detail VALUES("332","EST_BR.231019.000062","106","681818.1818","0","0","681818.1818","");
INSERT INTO t_estimasi_panel_detail VALUES("333","EST_BR.231019.000062","1075","454545.4545","0","0","454545.4545","");
INSERT INTO t_estimasi_panel_detail VALUES("334","EST_BR.231019.000063","1016","386363.6363","0","0","386363.6363","");
INSERT INTO t_estimasi_panel_detail VALUES("335","EST_BR.231019.000063","1073","386363.6363","0","0","386363.6363","");
INSERT INTO t_estimasi_panel_detail VALUES("336","EST_BR.231019.000063","101","272727.2727","0","0","272727.2727","");
INSERT INTO t_estimasi_panel_detail VALUES("337","EST_BR.231019.000063","1075","272727.2727","0","0","272727.2727","");
INSERT INTO t_estimasi_panel_detail VALUES("338","EST_BR.231019.000063","106","409090.909","0","0","409090.909","");
INSERT INTO t_estimasi_panel_detail VALUES("339","EST_BR.231019.000063","1071","386363.6363","0","0","386363.6363","");
INSERT INTO t_estimasi_panel_detail VALUES("340","EST_BR.231019.000063","1076","386363.6363","0","0","386363.6363","");
INSERT INTO t_estimasi_panel_detail VALUES("341","EST_BR.231019.000063","1082","386363.6363","0","0","386363.6363","");
INSERT INTO t_estimasi_panel_detail VALUES("343","EST_BR.231019.000062","1023","545454.5454","0","0","545454.5454","");
INSERT INTO t_estimasi_panel_detail VALUES("344","EST_BR.231019.000062","1118","227272.7272","0","0","227272.7272","");
INSERT INTO t_estimasi_panel_detail VALUES("345","EST_BR.241019.000064","101","450000","12","54000","396000","0");
INSERT INTO t_estimasi_panel_detail VALUES("346","EST_BR.241019.000064","1075","450000","12","54000","396000","1");
INSERT INTO t_estimasi_panel_detail VALUES("347","EST_BR.241019.000064","1071","550000","12","66000","484000","0");
INSERT INTO t_estimasi_panel_detail VALUES("348","EST_BR.241019.000064","1082","550000","12","66000","484000","0");
INSERT INTO t_estimasi_panel_detail VALUES("349","EST_BR.241019.000064","1093","650000","12","78000","572000","0");
INSERT INTO t_estimasi_panel_detail VALUES("350","EST_BR.241019.000064","1076","650000","12","78000","572000","0");
INSERT INTO t_estimasi_panel_detail VALUES("351","EST_BR.241019.000064","1074","450000","12","54000","396000","0");
INSERT INTO t_estimasi_panel_detail VALUES("352","EST_BR.241019.000064","1087","250000","12","30000","220000","1");
INSERT INTO t_estimasi_panel_detail VALUES("353","EST_BR.241019.000064","1085","250000","12","30000","220000","1");
INSERT INTO t_estimasi_panel_detail VALUES("354","EST_BR.241019.000065","1071","500000","10","50000","450000","");
INSERT INTO t_estimasi_panel_detail VALUES("355","EST_BR.241019.000065","101","454545.4545","10","45454.54545","409090.90905","");
INSERT INTO t_estimasi_panel_detail VALUES("356","EST_BR.241019.000065","1011","500000","10","50000","450000","0");
INSERT INTO t_estimasi_panel_detail VALUES("357","EST_BR.241019.000065","1073","590909.0909","10","59090.90909","531818.18181","0");
INSERT INTO t_estimasi_panel_detail VALUES("358","EST_BR.241019.000065","1016","590909.0909","10","59090.90909","531818.18181","0");
INSERT INTO t_estimasi_panel_detail VALUES("359","EST_BR.241019.000065","1022","409090.909","10","40909.0909","368181.8181","0");
INSERT INTO t_estimasi_panel_detail VALUES("360","EST_BR.241019.000065","1023","500000","10","50000","450000","");
INSERT INTO t_estimasi_panel_detail VALUES("361","EST_BR.241019.000065","1085","227272.7272","10","22727.27272","204545.45448","");
INSERT INTO t_estimasi_panel_detail VALUES("362","EST_BR.241019.000065","1044","227272.72","10","22727.272","204545.448","");
INSERT INTO t_estimasi_panel_detail VALUES("363","EST_BR.241019.000065","1093","590909.0909","10","59090.90909","531818.18181","0");
INSERT INTO t_estimasi_panel_detail VALUES("364","EST_BR.241019.000065","1076","590909.0909","10","59090.90909","531818.18181","0");
INSERT INTO t_estimasi_panel_detail VALUES("365","EST_BR.241019.000065","1082","500000","10","50000","450000","0");
INSERT INTO t_estimasi_panel_detail VALUES("366","EST_BR.241019.000065","1074","409090.909","10","40909.0909","368181.8181","0");
INSERT INTO t_estimasi_panel_detail VALUES("367","EST_BR.241019.000065","1086","227272.7272","10","22727.27272","204545.45448","");
INSERT INTO t_estimasi_panel_detail VALUES("368","EST_BR.241019.000066","1071","500000","10","50000","450000","0");
INSERT INTO t_estimasi_panel_detail VALUES("369","EST_BR.241019.000066","101","454545.4545","10","45454.54545","409090.90905","0");
INSERT INTO t_estimasi_panel_detail VALUES("370","EST_BR.241019.000066","1011","500000","10","50000","450000","");
INSERT INTO t_estimasi_panel_detail VALUES("371","EST_BR.241019.000066","1073","590909.0909","10","59090.90909","531818.18181","0");
INSERT INTO t_estimasi_panel_detail VALUES("372","EST_BR.241019.000066","1077","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_estimasi_panel_detail VALUES("373","EST_BR.241019.000066","1022","409090.909","10","40909.0909","368181.8181","1");
INSERT INTO t_estimasi_panel_detail VALUES("374","EST_BR.241019.000066","1023","500000","10","50000","450000","0");
INSERT INTO t_estimasi_panel_detail VALUES("375","EST_BR.241019.000066","1085","227272.7272","10","22727.27272","204545.45448","0");
INSERT INTO t_estimasi_panel_detail VALUES("376","EST_BR.241019.000066","1044","227272.72","10","22727.272","204545.448","0");
INSERT INTO t_estimasi_panel_detail VALUES("377","EST_BR.241019.000066","1093","590909.0909","10","59090.90909","531818.18181","0");
INSERT INTO t_estimasi_panel_detail VALUES("378","EST_BR.241019.000066","1076","590909.0909","10","59090.90909","531818.18181","0");
INSERT INTO t_estimasi_panel_detail VALUES("379","EST_BR.241019.000066","1082","500000","10","50000","450000","0");
INSERT INTO t_estimasi_panel_detail VALUES("380","EST_BR.241019.000066","1074","409090.909","10","40909.0909","368181.8181","0");
INSERT INTO t_estimasi_panel_detail VALUES("381","EST_BR.241019.000066","1086","227272.7272","10","22727.27272","204545.45448","0");
INSERT INTO t_estimasi_panel_detail VALUES("382","EST_BR.251019.000067","101","650000","10","65000","585000","0");
INSERT INTO t_estimasi_panel_detail VALUES("383","EST_BR.251019.000067","1127","100000","10","10000","90000","0");
INSERT INTO t_estimasi_panel_detail VALUES("384","EST_BR.231019.000062","1087","227272.7272","0","0","227272.7272","0");
INSERT INTO t_estimasi_panel_detail VALUES("385","EST_BR.231019.000062","1086","227272.7272","0","0","227272.7272","0");
INSERT INTO t_estimasi_panel_detail VALUES("386","EST_BR.231019.000062","1085","227272.7272","0","0","227272.7272","");
INSERT INTO t_estimasi_panel_detail VALUES("387","EST_BR.231019.000062","1044","227272.72","0","0","227272.72","0");
INSERT INTO t_estimasi_panel_detail VALUES("388","EST_BR.281019.000068","101","409090.909","10","40909.0909","368181.8181","0");
INSERT INTO t_estimasi_panel_detail VALUES("389","EST_BR.281019.000068","1109","272727.2727","10","27272.72727","245454.54543","0");
INSERT INTO t_estimasi_panel_detail VALUES("390","EST_BR.281019.000068","1120","136363.6363","10","13636.36363","122727.27267","0");
INSERT INTO t_estimasi_panel_detail VALUES("391","EST_BR.281019.000068","1071","500000","10","50000","450000","0");
INSERT INTO t_estimasi_panel_detail VALUES("392","EST_BR.281019.000068","1093","590909.0909","10","59090.90909","531818.18181","0");
INSERT INTO t_estimasi_panel_detail VALUES("393","EST_BR.281019.000068","1076","590909.0909","10","59090.90909","531818.18181","0");
INSERT INTO t_estimasi_panel_detail VALUES("394","EST_BR.281019.000068","1121","272727.2727","10","27272.72727","245454.54542999997","0");
INSERT INTO t_estimasi_panel_detail VALUES("395","EST_BR.281019.000068","1075","409090.909","10","40909.0909","368181.8181","");
INSERT INTO t_estimasi_panel_detail VALUES("396","EST_BR.281019.000068","102","159090.909","10","15909.0909","143181.8181","0");
INSERT INTO t_estimasi_panel_detail VALUES("397","EST_BR.281019.000068","1023","500000","10","50000","450000","1");
INSERT INTO t_estimasi_panel_detail VALUES("398","EST_BR.281019.000068","1016","590909.0909","10","59090.90909","531818.18181","0");
INSERT INTO t_estimasi_panel_detail VALUES("399","EST_BR.291019.000069","101","454545.4545","0","0","454545.4545","");
INSERT INTO t_estimasi_panel_detail VALUES("400","EST_BR.301019.000070","1075","318181.8181","0","0","318181.8181","");
INSERT INTO t_estimasi_panel_detail VALUES("401","EST_BR.301019.000070","1047","204545.4545","0","0","204545.4545","");
INSERT INTO t_estimasi_panel_detail VALUES("402","EST_BR.011019.000040","101","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("403","EST_BR.021119.000071","101","454545.4545","10","45454.54545","409090.90905","");
INSERT INTO t_estimasi_panel_detail VALUES("404","EST_BR.021119.000071","1126","272727.2727","10","27272.72727","245454.54542999997","");
INSERT INTO t_estimasi_panel_detail VALUES("405","EST_BR.021119.000072","1075","409090.909","0","0","409090.909","0");
INSERT INTO t_estimasi_panel_detail VALUES("406","EST_BR.041119.000073","101","454545.4545","10","45454.54545","409090.90905","");
INSERT INTO t_estimasi_panel_detail VALUES("407","EST_BR.041119.000073","106","636363.6363","10","63636.36363","572727.27267","");
INSERT INTO t_estimasi_panel_detail VALUES("408","EST_BR.041119.000073","1112","136363.6363","10","13636.36363","122727.27267","");
INSERT INTO t_estimasi_panel_detail VALUES("409","EST_BR.041119.000073","1099","136363.6363","10","13636.36363","122727.27267","");
INSERT INTO t_estimasi_panel_detail VALUES("410","EST_BR.041119.000074","1075","454545.4545","10","45454.54545","409090.90905","");
INSERT INTO t_estimasi_panel_detail VALUES("411","EST_BR.041119.000074","1023","500000","10","50000","450000","");
INSERT INTO t_estimasi_panel_detail VALUES("412","EST_BR.041119.000075","106","681818.1818","10","68181.81818","613636.36362","");
INSERT INTO t_estimasi_panel_detail VALUES("413","EST_BR.041119.000075","1011","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_estimasi_panel_detail VALUES("414","EST_BR.041119.000075","101","545454.5454","10","54545.45454","490909.09085999994","");
INSERT INTO t_estimasi_panel_detail VALUES("415","EST_BR.041119.000075","1073","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_estimasi_panel_detail VALUES("416","EST_BR.041119.000075","105","272727.2727","10","27272.72727","245454.54542999997","");
INSERT INTO t_estimasi_panel_detail VALUES("417","EST_BR.041119.000075","1054","272727.2727","10","27272.72727","245454.54542999997","");
INSERT INTO t_estimasi_panel_detail VALUES("418","EST_BR.041119.000075","1053","272727.2727","10","27272.72727","245454.54542999997","");
INSERT INTO t_estimasi_panel_detail VALUES("419","EST_BR.041119.000075","109","318181.8181","10","31818.18181","286363.63629","");
INSERT INTO t_estimasi_panel_detail VALUES("420","EST_BR.041119.000075","1108","136363.6363","10","13636.36363","122727.27267","");
INSERT INTO t_estimasi_panel_detail VALUES("422","EST_BR.041119.000075","1058","181818.1818","10","18181.81818","163636.36362","");
INSERT INTO t_estimasi_panel_detail VALUES("423","EST_BR.041119.000075","1052","90909.0909","10","9090.90909","81818.18181","");
INSERT INTO t_estimasi_panel_detail VALUES("424","EST_BR.041119.000075","1096","90909.09","10","9090.909","81818.181","");
INSERT INTO t_estimasi_panel_detail VALUES("427","EST_BR.041119.000076","1118","363636.3636","0","0","363636.3636","0");
INSERT INTO t_estimasi_panel_detail VALUES("428","EST_BR.061119.000077","1076","590909.0909","0","0","590909.0909","0");
INSERT INTO t_estimasi_panel_detail VALUES("431","EST_BR.061119.000077","1016","590909.0909","0","0","590909.0909","0");
INSERT INTO t_estimasi_panel_detail VALUES("432","EST_BR.061119.000077","1073","590909.0909","0","0","590909.0909","");
INSERT INTO t_estimasi_panel_detail VALUES("433","EST_BR.061119.000077","1011","500000","0","0","500000","0");
INSERT INTO t_estimasi_panel_detail VALUES("435","EST_BR.061119.000078","101","409090.909","0","0","409090.909","");
INSERT INTO t_estimasi_panel_detail VALUES("436","EST_BR.061119.000079","1075","454545.4545","10","45454.54545","409090.90905","");
INSERT INTO t_estimasi_panel_detail VALUES("437","EST_BR.061119.000079","1023","500000","10","50000","450000","0");
INSERT INTO t_estimasi_panel_detail VALUES("438","EST_BR.061119.000079","1016","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_estimasi_panel_detail VALUES("439","EST_BR.061119.000079","1073","590909.0909","10","59090.90909","531818.18181","0");
INSERT INTO t_estimasi_panel_detail VALUES("441","EST_BR.061119.000079","1088","136363.6363","10","13636.36363","122727.27267","0");
INSERT INTO t_estimasi_panel_detail VALUES("442","EST_BR.061119.000079","1090","136363.6363","10","13636.36363","122727.27267","0");
INSERT INTO t_estimasi_panel_detail VALUES("444","EST_BR.061119.000079","101","454545.4545","10","45454.54545","409090.90905","");
INSERT INTO t_estimasi_panel_detail VALUES("445","EST_BR.061119.000079","1087","227272.7272","10","22727.27272","204545.45448","1");
INSERT INTO t_estimasi_panel_detail VALUES("446","EST_BR.061119.000079","1071","500000","10","50000","450000","");
INSERT INTO t_estimasi_panel_detail VALUES("447","EST_BR.061119.000079","1093","590909.0909","10","59090.90909","531818.18181","1");
INSERT INTO t_estimasi_panel_detail VALUES("448","EST_BR.061119.000079","1074","409090.909","10","40909.0909","368181.8181","1");
INSERT INTO t_estimasi_panel_detail VALUES("449","EST_BR.081119.000080","1025","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_estimasi_panel_detail VALUES("450","EST_BR.081119.000080","1075","409090.909","10","40909.0909","368181.8181","");
INSERT INTO t_estimasi_panel_detail VALUES("451","EST_BR.081119.000080","1116","272727.2727","10","27272.72727","245454.54542999997","");
INSERT INTO t_estimasi_panel_detail VALUES("452","EST_BR.081119.000080","1082","500000","10","50000","450000","0");
INSERT INTO t_estimasi_panel_detail VALUES("453","EST_BR.081119.000080","1076","590909.0909","10","59090.90909","531818.18181","1");
INSERT INTO t_estimasi_panel_detail VALUES("454","EST_BR.081119.000080","1115","272727.2727","10","27272.72727","245454.54542999997","0");
INSERT INTO t_estimasi_panel_detail VALUES("455","EST_BR.081119.000080","1129","272727.2727","10","27272.72727","245454.54543","1");
INSERT INTO t_estimasi_panel_detail VALUES("456","EST_BR.111119.000081","101","409090.909","10","40909.0909","368181.8181","");
INSERT INTO t_estimasi_panel_detail VALUES("457","EST_BR.111119.000081","1071","500000","10","50000","450000","");
INSERT INTO t_estimasi_panel_detail VALUES("458","EST_BR.111119.000082","1075","318181.8181","0","0","318181.8181","0");
INSERT INTO t_estimasi_panel_detail VALUES("459","EST_BR.121119.000083","101","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("460","EST_BR.121119.000083","1075","350000","0","0","350000","1");
INSERT INTO t_estimasi_panel_detail VALUES("461","EST_BR.121119.000083","1011","410000","0","0","410000","0");
INSERT INTO t_estimasi_panel_detail VALUES("462","EST_BR.121119.000083","1023","425000","0","0","425000","1");
INSERT INTO t_estimasi_panel_detail VALUES("463","EST_BR.121119.000083","1082","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("466","EST_BR.121119.000083","1076","425000","0","0","425000","1");
INSERT INTO t_estimasi_panel_detail VALUES("467","EST_BR.121119.000083","106","455000","0","0","455000","1");
INSERT INTO t_estimasi_panel_detail VALUES("468","EST_BR.121119.000084","101","318181.8181","0","0","318181.8181","0");
INSERT INTO t_estimasi_panel_detail VALUES("469","EST_BR.121119.000084","1099","127272.7272","0","0","127272.7272","0");
INSERT INTO t_estimasi_panel_detail VALUES("470","EST_BR.121119.000084","1016","363636.3636","0","0","363636.3636","0");
INSERT INTO t_estimasi_panel_detail VALUES("471","EST_BR.121119.000084","1022","204545.4545","0","0","204545.4545","0");
INSERT INTO t_estimasi_panel_detail VALUES("472","EST_BR.121119.000084","1023","363636.3636","0","0","363636.3636","0");
INSERT INTO t_estimasi_panel_detail VALUES("473","EST_BR.121119.000084","1075","318181.8181","0","0","318181.8181","0");
INSERT INTO t_estimasi_panel_detail VALUES("474","EST_BR.121119.000084","1082","363636.3636","0","0","363636.3636","0");
INSERT INTO t_estimasi_panel_detail VALUES("475","EST_BR.121119.000084","1112","127272.7272","0","0","127272.7272","0");
INSERT INTO t_estimasi_panel_detail VALUES("476","EST_BR.121119.000084","1093","363636.3636","0","0","363636.3636","0");
INSERT INTO t_estimasi_panel_detail VALUES("477","EST_BR.121119.000084","1076","363636.3636","0","0","363636.3636","0");
INSERT INTO t_estimasi_panel_detail VALUES("478","EST_BR.141119.000085","106","455000","0","0","455000","1");
INSERT INTO t_estimasi_panel_detail VALUES("479","EST_BR.141119.000085","1071","410000","0","0","410000","0");
INSERT INTO t_estimasi_panel_detail VALUES("480","EST_BR.141119.000085","101","350000","0","0","350000","");
INSERT INTO t_estimasi_panel_detail VALUES("481","EST_BR.141119.000085","1075","350000","0","0","350000","");
INSERT INTO t_estimasi_panel_detail VALUES("482","EST_BR.141119.000085","1093","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("483","EST_BR.141119.000085","1076","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("484","EST_BR.141119.000085","1023","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("485","EST_BR.141119.000085","1082","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("486","EST_BR.141119.000085","1077","425000","0","0","425000","1");
INSERT INTO t_estimasi_panel_detail VALUES("487","EST_BR.141119.000086","101","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("488","EST_BR.141119.000086","1075","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("489","EST_BR.141119.000086","1011","410000","0","0","410000","0");
INSERT INTO t_estimasi_panel_detail VALUES("490","EST_BR.141119.000086","1071","410000","0","0","410000","0");
INSERT INTO t_estimasi_panel_detail VALUES("491","EST_BR.141119.000086","1023","425000","0","0","425000","1");
INSERT INTO t_estimasi_panel_detail VALUES("492","EST_BR.141119.000086","1077","425000","0","0","425000","1");
INSERT INTO t_estimasi_panel_detail VALUES("493","EST_BR.061119.000077","1119","181818.1818","0","0","181818.1818","0");
INSERT INTO t_estimasi_panel_detail VALUES("494","EST_BR.161119.000087","1044","136363.6363","0","0","136363.6363","0");
INSERT INTO t_estimasi_panel_detail VALUES("495","EST_BR.161119.000087","1073","363636.3636","0","0","363636.3636","0");
INSERT INTO t_estimasi_panel_detail VALUES("496","EST_BR.161119.000087","1077","363636.3636","0","0","363636.3636","0");
INSERT INTO t_estimasi_panel_detail VALUES("497","EST_BR.161119.000087","1023","363636.3636","0","0","363636.3636","0");
INSERT INTO t_estimasi_panel_detail VALUES("498","EST_BR.161119.000087","102","104545.4545","0","0","104545.4545","0");
INSERT INTO t_estimasi_panel_detail VALUES("499","EST_BR.161119.000087","1075","318181.8181","0","0","318181.8181","0");
INSERT INTO t_estimasi_panel_detail VALUES("500","EST_BR.161119.000087","1116","104545.4545","0","0","104545.4545","0");
INSERT INTO t_estimasi_panel_detail VALUES("501","EST_BR.161119.000087","1025","477272.7272","0","0","477272.7272","0");
INSERT INTO t_estimasi_panel_detail VALUES("502","EST_BR.161119.000087","1130","104545.4545","0","0","104545.4545","0");
INSERT INTO t_estimasi_panel_detail VALUES("503","EST_BR.161119.000087","1082","363636.3636","0","0","363636.3636","0");
INSERT INTO t_estimasi_panel_detail VALUES("504","EST_BR.161119.000087","1093","363636.3636","0","0","363636.3636","0");
INSERT INTO t_estimasi_panel_detail VALUES("505","EST_BR.161119.000087","1076","363636.3636","0","0","363636.3636","0");
INSERT INTO t_estimasi_panel_detail VALUES("506","EST_BR.161119.000087","1115","104545.4545","0","0","104545.4545","0");
INSERT INTO t_estimasi_panel_detail VALUES("507","EST_BR.161119.000087","1129","104545.4545","0","0","104545.4545","0");
INSERT INTO t_estimasi_panel_detail VALUES("508","EST_BR.161119.000087","1118","104545.4545","0","0","104545.4545","0");
INSERT INTO t_estimasi_panel_detail VALUES("509","EST_BR.111119.000081","106","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_estimasi_panel_detail VALUES("512","EST_BR.201119.000088","106","455000","0","0","455000","0");
INSERT INTO t_estimasi_panel_detail VALUES("513","EST_BR.201119.000088","101","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("514","EST_BR.201119.000088","1093","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("515","EST_BR.201119.000088","1023","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("516","EST_BR.201119.000088","1071","410000","0","0","410000","0");
INSERT INTO t_estimasi_panel_detail VALUES("517","EST_BR.211119.000089","101","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("518","EST_BR.211119.000089","1075","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("519","EST_BR.211119.000089","1112","90000","0","0","90000","0");
INSERT INTO t_estimasi_panel_detail VALUES("520","EST_BR.211119.000089","1025","500000","0","0","500000","0");
INSERT INTO t_estimasi_panel_detail VALUES("521","EST_BR.211119.000089","1023","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("522","EST_BR.211119.000089","1016","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("523","EST_BR.211119.000089","1073","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("524","EST_BR.211119.000089","1071","410000","0","0","410000","0");
INSERT INTO t_estimasi_panel_detail VALUES("525","EST_BR.221119.000090","101","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("526","EST_BR.221119.000090","1075","350000","0","0","350000","1");
INSERT INTO t_estimasi_panel_detail VALUES("527","EST_BR.221119.000090","1011","410000","0","0","410000","0");
INSERT INTO t_estimasi_panel_detail VALUES("528","EST_BR.221119.000090","1023","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("529","EST_BR.221119.000090","1082","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("530","EST_BR.221119.000090","1076","425000","0","0","425000","1");
INSERT INTO t_estimasi_panel_detail VALUES("531","EST_BR.221119.000090","106","455000","0","0","455000","1");
INSERT INTO t_estimasi_panel_detail VALUES("532","EST_BR.221119.000091","1025","363636.3636","0","0","363636.3636","1");
INSERT INTO t_estimasi_panel_detail VALUES("533","EST_BR.221119.000091","1085","181818.1818","0","0","181818.1818","1");
INSERT INTO t_estimasi_panel_detail VALUES("534","EST_BR.221119.000091","1125","1363636.3636","0","0","1363636.3636","0");
INSERT INTO t_estimasi_panel_detail VALUES("535","EST_BR.221119.000091","1131","1363636.3636","0","0","1363636.3636","0");
INSERT INTO t_estimasi_panel_detail VALUES("536","EST_BR.231119.000092","1019","818181.8181","10","81818.18181","736363.63629","");
INSERT INTO t_estimasi_panel_detail VALUES("537","EST_BR.231119.000092","1067","454545.4545","10","45454.54545","409090.90905","");
INSERT INTO t_estimasi_panel_detail VALUES("538","EST_BR.231119.000092","1132","454545.4545","10","45454.54545","409090.90905","");
INSERT INTO t_estimasi_panel_detail VALUES("539","EST_BR.251119.000093","1081","227272.7272","0","0","227272.7272","");
INSERT INTO t_estimasi_panel_detail VALUES("540","EST_BR.251119.000094","101","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("541","EST_BR.251119.000094","1071","410000","0","0","410000","0");
INSERT INTO t_estimasi_panel_detail VALUES("542","EST_BR.251119.000094","1075","350000","0","0","350000","1");
INSERT INTO t_estimasi_panel_detail VALUES("543","EST_BR.251119.000094","1082","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("544","EST_BR.251119.000094","1076","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("545","EST_BR.251119.000095","1075","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("546","EST_BR.251119.000095","1023","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("547","EST_BR.251119.000095","1011","410000","0","0","410000","0");
INSERT INTO t_estimasi_panel_detail VALUES("548","EST_BR.251119.000095","1093","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("549","EST_BR.251119.000095","1076","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("550","EST_BR.251119.000096","1071","410000","0","0","410000","1");
INSERT INTO t_estimasi_panel_detail VALUES("551","EST_BR.251119.000096","1112","90000","0","0","90000","0");
INSERT INTO t_estimasi_panel_detail VALUES("552","EST_BR.251119.000096","101","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("553","EST_BR.251119.000096","1082","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("554","EST_BR.251119.000096","1075","350000","0","0","350000","1");
INSERT INTO t_estimasi_panel_detail VALUES("555","EST_BR.251119.000096","1099","90000","0","0","90000","0");
INSERT INTO t_estimasi_panel_detail VALUES("556","EST_BR.251119.000096","1077","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("557","EST_BR.251119.000097","1073","425000","0","0","425000","1");
INSERT INTO t_estimasi_panel_detail VALUES("558","EST_BR.251119.000097","1011","410000","0","0","410000","0");
INSERT INTO t_estimasi_panel_detail VALUES("559","EST_BR.251119.000097","101","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("560","EST_BR.251119.000097","1112","90000","0","0","90000","0");
INSERT INTO t_estimasi_panel_detail VALUES("561","EST_BR.251119.000097","1093","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("562","EST_BR.251119.000097","1025","500000","0","0","500000","0");
INSERT INTO t_estimasi_panel_detail VALUES("563","EST_BR.251119.000097","1076","425000","0","0","425000","1");
INSERT INTO t_estimasi_panel_detail VALUES("564","EST_BR.251119.000098","101","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("565","EST_BR.251119.000098","1025","500000","0","0","500000","0");
INSERT INTO t_estimasi_panel_detail VALUES("566","EST_BR.251119.000098","1075","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("567","EST_BR.251119.000098","1016","425000","0","0","425000","1");
INSERT INTO t_estimasi_panel_detail VALUES("568","EST_BR.251119.000098","1076","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("569","EST_BR.251119.000098","1099","90000","0","0","90000","0");
INSERT INTO t_estimasi_panel_detail VALUES("570","EST_BR.261119.000099","1082","500000","10","50000","450000","");
INSERT INTO t_estimasi_panel_detail VALUES("571","EST_BR.261119.000099","1130","136363.6363","10","13636.36363","122727.27267","");
INSERT INTO t_estimasi_panel_detail VALUES("572","EST_BR.261119.000100","1025","545454.5454","0","0","545454.5454","");
INSERT INTO t_estimasi_panel_detail VALUES("574","EST_BR.261119.000101","1121","181818.1818","0","0","181818.1818","0");
INSERT INTO t_estimasi_panel_detail VALUES("575","EST_BR.271119.000102","106","455000","0","0","455000","1");
INSERT INTO t_estimasi_panel_detail VALUES("576","EST_BR.271119.000102","1071","410000","0","0","410000","0");
INSERT INTO t_estimasi_panel_detail VALUES("577","EST_BR.271119.000102","101","350000","0","0","350000","1");
INSERT INTO t_estimasi_panel_detail VALUES("578","EST_BR.271119.000102","1075","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("579","EST_BR.271119.000102","1093","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("580","EST_BR.271119.000102","1076","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("581","EST_BR.271119.000102","1023","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("582","EST_BR.271119.000102","1082","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("583","EST_BR.271119.000102","1016","425000","0","0","425000","1");
INSERT INTO t_estimasi_panel_detail VALUES("584","EST_BR.271119.000103","102","136363.6363","0","0","136363.6363","0");
INSERT INTO t_estimasi_panel_detail VALUES("585","EST_BR.291119.000104","1025","500000","0","0","500000","0");
INSERT INTO t_estimasi_panel_detail VALUES("586","EST_BR.291119.000104","1082","425000","0","0","425000","0");
INSERT INTO t_estimasi_panel_detail VALUES("587","EST_BR.291119.000104","1075","350000","0","0","350000","0");
INSERT INTO t_estimasi_panel_detail VALUES("588","EST_BR.261119.000099","1133","90909.0909","0","0","90909.0909","0");
INSERT INTO t_estimasi_panel_detail VALUES("589","EST_BR.301119.000105","101","500000","0","0","500000","0");



DROP TABLE t_estimasi_part_detail;

CREATE TABLE `t_estimasi_part_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_estimasi` varchar(20) NOT NULL,
  `fk_part` varchar(50) NOT NULL,
  `qty_part` int(11) NOT NULL,
  `harga_jual_part` double DEFAULT NULL,
  `diskon_part` float NOT NULL,
  `harga_diskon_part` double DEFAULT NULL,
  `harga_total_estimasi_part` double NOT NULL,
  `mark_part` enum('0','1') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

INSERT INTO t_estimasi_part_detail VALUES("1","EST_BR.110919.000001","9965625560","1","7566680","5","378334","7188346","");
INSERT INTO t_estimasi_part_detail VALUES("2","EST_BR.110919.000001","B45A56146A","1","20058","5","1002.9","19055.1","");
INSERT INTO t_estimasi_part_detail VALUES("3","EST_BR.110919.000001","DA6K51031F","1","13488970","5","674448.5","12814521.5","");
INSERT INTO t_estimasi_part_detail VALUES("4","EST_BR.120919.000002","71101-TE7-K00ZZ","1","999000","5","49950","949050","");
INSERT INTO t_estimasi_part_detail VALUES("5","EST_BR.120919.000002","74115-TG4-U00","1","71000","5","3550","67450","");
INSERT INTO t_estimasi_part_detail VALUES("6","EST_BR.120919.000002","74165-TG4-U00","1","71000","5","3550","67450","");
INSERT INTO t_estimasi_part_detail VALUES("7","EST_BR.130919.000010","56111-BZ330","1","1089000","0","0","1089000","");
INSERT INTO t_estimasi_part_detail VALUES("8","EST_BR.130919.000010","75533-BZ100","1","101640","0","0","101640","");
INSERT INTO t_estimasi_part_detail VALUES("9","EST_BR.130919.000010","SEALER","2","211750","0","0","423500","");
INSERT INTO t_estimasi_part_detail VALUES("11","EST_BR.130919.000012","MB283675","1","677272.7272","5","33863.63636","643409.09084","");
INSERT INTO t_estimasi_part_detail VALUES("12","EST_BR.170919.000017","96301-1HH4B","1","701800","5","35090","666710","");
INSERT INTO t_estimasi_part_detail VALUES("13","EST_BR.180919.000022","87910-BZ310","1","146300","5","7315","138985","");
INSERT INTO t_estimasi_part_detail VALUES("14","EST_BR.180919.000022","DGM022-33020-002","1","627000","5","31350","595650","");
INSERT INTO t_estimasi_part_detail VALUES("15","EST_BR.180919.000022","81551-BZ100","1","679250","5","33962.5","645287.5","");
INSERT INTO t_estimasi_part_detail VALUES("20","EST_BR.200919.000023","75311-0K230","1","187000","0","0","187000","");
INSERT INTO t_estimasi_part_detail VALUES("21","EST_BR.200919.000023","XX","1","30800","0","0","30800","");
INSERT INTO t_estimasi_part_detail VALUES("22","EST_BR.200919.000023","53294-0K120","1","286000","0","0","286000","");
INSERT INTO t_estimasi_part_detail VALUES("23","EST_BR.200919.000023","52116-0K090","1","48400","0","0","48400","");
INSERT INTO t_estimasi_part_detail VALUES("24","EST_BR.230919.000024","52900-C7000YG1","1","838181.8181","5","41909.090905","796272.727195","");
INSERT INTO t_estimasi_part_detail VALUES("25","EST_BR.180919.000022","56111-BZ180","1","935000","5","46750","888250","");
INSERT INTO t_estimasi_part_detail VALUES("26","EST_BR.180919.000022","75533-BZ060","1","68200","5","3410","64790","");
INSERT INTO t_estimasi_part_detail VALUES("27","EST_BR.180919.000022","56117-BZ100","1","70400","5","3520","66880","");
INSERT INTO t_estimasi_part_detail VALUES("28","EST_BR.180919.000022","KC FILM","1","318181","5","15909.05","302271.95","");
INSERT INTO t_estimasi_part_detail VALUES("29","EST_BR.240919.000027","KACA FILM","1","400000","0","0","400000","");
INSERT INTO t_estimasi_part_detail VALUES("30","EST_BR.260919.000032","MB283675","1","677272.7272","5","33863.63636","643409.09084","");
INSERT INTO t_estimasi_part_detail VALUES("31","EST_BR.230919.000026","92402-2W035","1","1992727.2727","5","99636.363635","1893090.909065","");
INSERT INTO t_estimasi_part_detail VALUES("32","EST_BR.270919.000036","81150-BZ390","1","1270500","0","0","1270500","");
INSERT INTO t_estimasi_part_detail VALUES("33","EST_BR.091019.000046","33956-T62-K01","1","315810","5","15790.5","300019.5","");
INSERT INTO t_estimasi_part_detail VALUES("34","EST_BR.091019.000046","71101-T61-T00ZZ","1","2526480","5","126324","2400156","");
INSERT INTO t_estimasi_part_detail VALUES("35","EST_BR.161019.000054","76803-BZ030","1","278300","0","0","278300","");
INSERT INTO t_estimasi_part_detail VALUES("36","EST_BR.180919.000022","SEALER","2","192500","5","9625","365750","");
INSERT INTO t_estimasi_part_detail VALUES("40","EST_BR.241019.000065","71101-T61-T00ZZ","1","2526480","5","126324","2400156","");
INSERT INTO t_estimasi_part_detail VALUES("41","EST_BR.241019.000065","33956-T62-K01","1","315810","5","15790.5","300019.5","");
INSERT INTO t_estimasi_part_detail VALUES("42","EST_BR.241019.000066","71101-T61-T00ZZ","1","2526480","5","126324","2400156","");
INSERT INTO t_estimasi_part_detail VALUES("43","EST_BR.241019.000066","33956-T62-K01","1","315810","5","15790.5","300019.5","");
INSERT INTO t_estimasi_part_detail VALUES("45","EST_BR.251019.000067","9965625560 SS","1","7566680","0","0","7566680","");
INSERT INTO t_estimasi_part_detail VALUES("46","EST_BR.251019.000067","DG8L50031 BB","1","4092440","0","0","4092440","");
INSERT INTO t_estimasi_part_detail VALUES("47","EST_BR.251019.000067","9062036686 TT","1","1839970","0","0","1839970","");
INSERT INTO t_estimasi_part_detail VALUES("48","EST_BR.301019.000070","73101-TG4-U01","1","767800","5","38390","729410","");
INSERT INTO t_estimasi_part_detail VALUES("49","EST_BR.301019.000070","73125-SYY-000","1","67100","5","3355","63745","");
INSERT INTO t_estimasi_part_detail VALUES("50","EST_BR.301019.000070","73125-TG1-T00","1","45100","5","2255","42845","");
INSERT INTO t_estimasi_part_detail VALUES("51","EST_BR.301019.000070","73126-TF0-003","1","61600","5","3080","58520","");
INSERT INTO t_estimasi_part_detail VALUES("52","EST_BR.301019.000070","91568-TF0-003","1","167200","5","8360","158840","");
INSERT INTO t_estimasi_part_detail VALUES("53","EST_BR.301019.000070","KACA FILM","1","772727.2727","5","38636.363635","734090.909065","");
INSERT INTO t_estimasi_part_detail VALUES("54","EST_BR.301019.000070","SEALER","2","159090.909","5","7954.54545","302272.7271","");
INSERT INTO t_estimasi_part_detail VALUES("55","EST_BR.041119.000075","81561-BZ270","1","385000","0","0","385000","");
INSERT INTO t_estimasi_part_detail VALUES("56","EST_BR.041119.000075","81130-BZ310","1","535000","0","0","535000","");
INSERT INTO t_estimasi_part_detail VALUES("57","EST_BR.041119.000075","52115-BZ180","1","45000","0","0","45000","");
INSERT INTO t_estimasi_part_detail VALUES("58","EST_BR.041119.000075","17751-BZ110","1","120000","0","0","120000","");
INSERT INTO t_estimasi_part_detail VALUES("59","EST_BR.041119.000075","16400-BZ760","1","600000","0","0","600000","");
INSERT INTO t_estimasi_part_detail VALUES("60","EST_BR.041119.000075","16360-BZ300","1","650000","0","0","650000","");
INSERT INTO t_estimasi_part_detail VALUES("61","EST_BR.041119.000075","53301-BZ320","1","1200000","0","0","1200000","");
INSERT INTO t_estimasi_part_detail VALUES("63","EST_BR.141119.000085","SJRBL-AV019","1","369050","0","0","369050","");
INSERT INTO t_estimasi_part_detail VALUES("64","EST_BR.211119.000089","26540-1YR0A","1","424589","0","0","424589","");
INSERT INTO t_estimasi_part_detail VALUES("65","EST_BR.041119.000075","SB","1","136363.6363","0","0","136363.6363","");
INSERT INTO t_estimasi_part_detail VALUES("66","EST_BR.271119.000102","SJRBL-AV019","1","369050","0","0","369050","");
INSERT INTO t_estimasi_part_detail VALUES("67","EST_BR.291119.000104","81560-BZ340","1","629200","0","0","629200","");
INSERT INTO t_estimasi_part_detail VALUES("68","EST_BR.291119.000104","81920-BZ090","1","369050","0","0","369050","");



DROP TABLE t_gate_pass;

CREATE TABLE `t_gate_pass` (
  `no_gate_pass` varchar(20) NOT NULL,
  `tgl` timestamp NULL DEFAULT NULL,
  `fk_pkb` varchar(20) NOT NULL,
  `status` enum('Sementara','Final') NOT NULL,
  `tgl_trx` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`no_gate_pass`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_gate_pass VALUES("GP_BR.021119.000034","2019-11-02 00:00:00","PKB_BR.021119.000032","Final","2019-11-02 10:51:54");
INSERT INTO t_gate_pass VALUES("GP_BR.021119.000035","2019-11-02 00:00:00","PKB_BR.021119.000033","Final","2019-11-02 11:57:12");
INSERT INTO t_gate_pass VALUES("GP_BR.021119.000036","2019-11-02 00:00:00","PKB_BR.021119.000033","Final","2019-11-02 11:58:23");
INSERT INTO t_gate_pass VALUES("GP_BR.041119.000037","2019-11-04 00:00:00","PKB_BR.041119.000034","Final","2019-11-04 15:03:08");
INSERT INTO t_gate_pass VALUES("GP_BR.051119.000038","2019-11-05 00:00:00","PKB_BR.051119.000035","Final","2019-11-05 09:26:45");
INSERT INTO t_gate_pass VALUES("GP_BR.071019.000017","2019-10-07 00:00:00","PKB_BR.071019.000022","Final","2019-10-07 15:20:49");
INSERT INTO t_gate_pass VALUES("GP_BR.071019.000018","2019-10-07 00:00:00","PKB_BR.051019.000021","Final","2019-10-07 16:00:18");
INSERT INTO t_gate_pass VALUES("GP_BR.091019.000019","2019-10-09 00:00:00","PKB_BR.021019.000020","Final","2019-10-09 08:42:22");
INSERT INTO t_gate_pass VALUES("GP_BR.110919.000001","2019-09-11 00:00:00","PKB_BR.110919.000001","Final","2019-09-11 15:35:16");
INSERT INTO t_gate_pass VALUES("GP_BR.120919.000002","2019-09-12 00:00:00","PKB_BR.120919.000002","Final","2019-09-12 09:52:37");
INSERT INTO t_gate_pass VALUES("GP_BR.121019.000020","2019-10-12 00:00:00","PKB_BR.121019.000022","Final","2019-10-12 08:39:54");
INSERT INTO t_gate_pass VALUES("GP_BR.121019.000021","2019-10-12 00:00:00","PKB_BR.121019.000025","Final","2019-10-12 10:24:58");
INSERT INTO t_gate_pass VALUES("GP_BR.140919.000003","2019-09-14 00:00:00","PKB_BR.120919.000004","Final","2019-09-14 11:30:43");
INSERT INTO t_gate_pass VALUES("GP_BR.140919.000004","2019-09-14 00:00:00","PKB_BR.120919.000004","Final","2019-09-14 11:31:24");
INSERT INTO t_gate_pass VALUES("GP_BR.141019.000022","2019-10-14 00:00:00","PKB_BR.081019.000022","Final","2019-10-14 08:23:36");
INSERT INTO t_gate_pass VALUES("GP_BR.151119.000039","2019-11-15 00:00:00","PKB_BR.141119.000037","Final","2019-11-15 13:39:09");
INSERT INTO t_gate_pass VALUES("GP_BR.151119.000040","2019-11-15 00:00:00","PKB_BR.151119.000038","Final","2019-11-15 15:02:38");
INSERT INTO t_gate_pass VALUES("GP_BR.160919.000005","2019-09-16 00:00:00","PKB_BR.130919.000005","Final","2019-09-16 15:44:45");
INSERT INTO t_gate_pass VALUES("GP_BR.160919.000006","2019-09-16 00:00:00","PKB_BR.130919.000005","Final","2019-09-16 15:46:15");
INSERT INTO t_gate_pass VALUES("GP_BR.181019.000023","2019-10-18 00:00:00","PKB_BR.181019.000026","Final","2019-10-18 08:26:01");
INSERT INTO t_gate_pass VALUES("GP_BR.181019.000024","2019-10-18 00:00:00","PKB_BR.181019.000027","Final","2019-10-18 10:54:23");
INSERT INTO t_gate_pass VALUES("GP_BR.190919.000007","2019-09-19 00:00:00","PKB_BR.190919.000008","Final","2019-09-19 10:03:40");
INSERT INTO t_gate_pass VALUES("GP_BR.190919.000008","2019-09-19 00:00:00","PKB_BR.190919.000008","Final","2019-09-19 10:03:55");
INSERT INTO t_gate_pass VALUES("GP_BR.190919.000009","2019-09-19 00:00:00","PKB_BR.190919.000008","Final","2019-09-19 10:04:23");
INSERT INTO t_gate_pass VALUES("GP_BR.190919.000010","2019-09-19 00:00:00","PKB_BR.190919.000009","Final","2019-09-19 14:11:08");
INSERT INTO t_gate_pass VALUES("GP_BR.190919.000011","2019-09-19 00:00:00","PKB_BR.190919.000010","Final","2019-09-19 14:21:59");
INSERT INTO t_gate_pass VALUES("GP_BR.191019.000025","2019-10-19 00:00:00","PKB_BR.151019.000024","Final","2019-10-19 11:20:38");
INSERT INTO t_gate_pass VALUES("GP_BR.191119.000041","2019-11-19 00:00:00","PKB_BR.191119.000041","Final","2019-11-19 08:57:33");
INSERT INTO t_gate_pass VALUES("GP_BR.211119.000042","2019-11-21 00:00:00","PKB_BR.211119.000047","Final","2019-11-21 09:50:07");
INSERT INTO t_gate_pass VALUES("GP_BR.221119.000043","2019-11-22 00:00:00","PKB_BR.211119.000046","Final","2019-11-22 09:02:25");
INSERT INTO t_gate_pass VALUES("GP_BR.221119.000044","2019-11-22 00:00:00","PKB_BR.221119.000051","Final","2019-11-22 10:36:46");
INSERT INTO t_gate_pass VALUES("GP_BR.240919.000012","2019-09-24 00:00:00","PKB_BR.240919.000012","Final","2019-09-24 08:45:26");
INSERT INTO t_gate_pass VALUES("GP_BR.241019.000026","2019-10-24 00:00:00","PKB_BR.241019.000031","Final","2019-10-24 15:27:31");
INSERT INTO t_gate_pass VALUES("GP_BR.250919.000013","2019-09-25 00:00:00","PKB_BR.250919.000016","Final","2019-09-25 09:13:25");
INSERT INTO t_gate_pass VALUES("GP_BR.251019.000027","2019-10-25 00:00:00","PKB_BR.251019.000032","Final","2019-10-25 14:56:37");
INSERT INTO t_gate_pass VALUES("GP_BR.251119.000045","2019-11-25 00:00:00","PKB_BR.211019.000027","Final","2019-11-25 09:22:32");
INSERT INTO t_gate_pass VALUES("GP_BR.251119.000046","2019-11-25 00:00:00","PKB_BR.251119.000053","Final","2019-11-25 14:18:32");
INSERT INTO t_gate_pass VALUES("GP_BR.260919.000014","2019-09-26 00:00:00","PKB_BR.260919.000017","Final","2019-09-26 08:39:45");
INSERT INTO t_gate_pass VALUES("GP_BR.260919.000015","2019-09-26 00:00:00","PKB_BR.260919.000020","Final","2019-09-26 09:12:50");
INSERT INTO t_gate_pass VALUES("GP_BR.261019.000028","2019-10-26 00:00:00","PKB_BR.261019.000027","Final","2019-10-26 08:19:11");
INSERT INTO t_gate_pass VALUES("GP_BR.261019.000029","2019-10-26 00:00:00","PKB_BR.211019.000026","Final","2019-10-26 09:59:01");
INSERT INTO t_gate_pass VALUES("GP_BR.261119.000047","2019-11-26 00:00:00","PKB_BR.261119.000054","Final","2019-11-26 13:49:39");
INSERT INTO t_gate_pass VALUES("GP_BR.281019.000030","2019-10-28 00:00:00","PKB_BR.281019.000030","Final","2019-10-28 10:47:04");
INSERT INTO t_gate_pass VALUES("GP_BR.291019.000031","2019-10-29 00:00:00","PKB_BR.211019.000025","Final","2019-10-29 09:33:02");
INSERT INTO t_gate_pass VALUES("GP_BR.291019.000032","2019-10-29 00:00:00","PKB_BR.291019.000030","Final","2019-10-29 15:43:41");
INSERT INTO t_gate_pass VALUES("GP_BR.291119.000048","2019-11-29 00:00:00","PKB_BR.291119.000059","Final","2019-11-29 08:41:42");
INSERT INTO t_gate_pass VALUES("GP_BR.291119.000049","2019-11-29 00:00:00","PKB_BR.291119.000060","Final","2019-11-29 09:35:57");
INSERT INTO t_gate_pass VALUES("GP_BR.291119.000050","2019-11-29 00:00:00","PKB_BR.291119.000061","Final","2019-11-29 10:17:03");
INSERT INTO t_gate_pass VALUES("GP_BR.291119.000051","2019-11-29 00:00:00","PKB_BR.291119.000062","Final","2019-11-29 10:19:27");
INSERT INTO t_gate_pass VALUES("GP_BR.291119.000052","2019-11-29 00:00:00","PKB_BR.291119.000063","Final","2019-11-29 14:29:03");
INSERT INTO t_gate_pass VALUES("GP_BR.291119.000053","2019-11-29 00:00:00","PKB_BR.291119.000064","Final","2019-11-29 15:23:14");
INSERT INTO t_gate_pass VALUES("GP_BR.300919.000016","2019-09-30 00:00:00","PKB_BR.260919.000018","Final","2019-09-30 11:56:12");
INSERT INTO t_gate_pass VALUES("GP_BR.311019.000033","2019-10-31 00:00:00","PKB_BR.301019.000031","Final","2019-10-31 11:26:39");



DROP TABLE t_group_kendaraan;

CREATE TABLE `t_group_kendaraan` (
  `id_group_kendaraan` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  PRIMARY KEY (`id_group_kendaraan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_group_kendaraan VALUES("AUDI","COUPE");
INSERT INTO t_group_kendaraan VALUES("BMW","BMW");
INSERT INTO t_group_kendaraan VALUES("CHRYS","CHRYSLER");
INSERT INTO t_group_kendaraan VALUES("DHST","DAIHATSU");
INSERT INTO t_group_kendaraan VALUES("DTS","DATSUN");
INSERT INTO t_group_kendaraan VALUES("FORD","FORD EVEREST");
INSERT INTO t_group_kendaraan VALUES("HND","HONDA");
INSERT INTO t_group_kendaraan VALUES("HNO","HINO");
INSERT INTO t_group_kendaraan VALUES("HYU","HYUNDAI");
INSERT INTO t_group_kendaraan VALUES("ISZ","ISUZU PANTHER");
INSERT INTO t_group_kendaraan VALUES("JP","JEEP");
INSERT INTO t_group_kendaraan VALUES("KIA","PICANTO");
INSERT INTO t_group_kendaraan VALUES("MAZDA","MAZDA");
INSERT INTO t_group_kendaraan VALUES("MERCY","MERCY");
INSERT INTO t_group_kendaraan VALUES("MTSH","MITSUBISHI");
INSERT INTO t_group_kendaraan VALUES("NSS","NISSAN");
INSERT INTO t_group_kendaraan VALUES("SZU","SUZUKI");
INSERT INTO t_group_kendaraan VALUES("TYO","TOYOTA");
INSERT INTO t_group_kendaraan VALUES("VW","VW");
INSERT INTO t_group_kendaraan VALUES("WLG","WULING");



DROP TABLE t_inventory_bengkel;

CREATE TABLE `t_inventory_bengkel` (
  `no_chasis` varchar(50) NOT NULL,
  `no_mesin` varchar(50) NOT NULL,
  `no_polisi` varchar(10) NOT NULL,
  `fk_tipe_kendaraan` varchar(50) NOT NULL,
  `fk_warna_kendaraan` varchar(50) NOT NULL,
  `fk_customer` varchar(50) NOT NULL,
  `nama_stnk` varchar(50) NOT NULL,
  `alamat_stnk` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_inventory_bengkel VALUES("MM6DJ2HAAHW323644","P520456689","AD 9130 U","MAZDA2","MMT","CUST_BR.110919.000001","RATNA","PUSPAN KIDUL RT 01/08 TIPES SERENGAN SURAKARTA");
INSERT INTO t_inventory_bengkel VALUES("MHRDD4730GJ602701","L15Z12418855","AD 8962 OH","MOBILIO","MMT","CUST_BR.120919.000002","RETNO CANDRADEWI","PURWODININGRATAN RT 02/04 JEBRES SURAKARTA");
INSERT INTO t_inventory_bengkel VALUES("MHK84DA1JGJ009188","","B 2320 BKG","AYLA","AA","CUST_BR.120919.000003","ARIF ANDI WIHATMANTO ST","SURAKARTA");
INSERT INTO t_inventory_bengkel VALUES("KMHS381EMKU036101","G4KEJD008584","B 1200 KJL","HYU","WHITE","CUST_BR.120919.000004","ANDINO ZAVTRA","CLUSTER KAV CEMPAKA VILLAGE NO 10 RT 02RW 03 JAT");
INSERT INTO t_inventory_bengkel VALUES("MRHFD16408P811145","R18A13910567","AD 7135 WA","CIVIC","AA","CUST_BR.120919.000005","BOBBY","SURAKARTA");
INSERT INTO t_inventory_bengkel VALUES("MPBSXXMXKSFS23962","UEJAFS23962","B 805 PPA","FORD","ORANGE","CUST_BR.120919.000006","PT.PARAMETAL PERKASA AGUNG","SURAKARTA");
INSERT INTO t_inventory_bengkel VALUES("MHFX542G7E2551701","2KDU448071","AD 8410 SU","KIJANG","AA","CUST_BR.120919.000007","TN AHMAD","SURAKARTA");
INSERT INTO t_inventory_bengkel VALUES("MKTTB35NZDK000161","CTH036074","B 2981 TBG","VW","BLCK","CUST_BR.120919.000008","HENGKY","SURAKARTA");
INSERT INTO t_inventory_bengkel VALUES("MHKM5EA2JJK045001","1NRF388289","B 1879 NRP","AVANZA","SILVER","CUST_BR.130919.000009","PT.MPM RENT","SUNBURST CBD LOT II NO.10 JL.KAPTEN SOEBIJANTO DJO");
INSERT INTO t_inventory_bengkel VALUES("MHBG3CG1CFJ037920","HR15726860T","H 9028 MZ","GRANDLIVINA","SILVER","CUST_BR.130919.000009","PT.MITRA PINASTHIKA MUSTIKA RENT","JL SEMERU RAYA NO 60 RT 03/05 GJMK SMG");
INSERT INTO t_inventory_bengkel VALUES("MHML0PU39EK164458","4D56CKX5371","B 9998 NCD","L300","BLCK","CUST_BR.130919.000009","PT.MPM RENT","SUNBURST CBD LOT II NO.10 Jl.KAPTEN SOEBIJANTO DJO");
INSERT INTO t_inventory_bengkel VALUES("MK2KRWFNUHJ001518","4N15UCA2499","AD 7162 MG","PAJERO","BLCK","CUST_BR.170919.000010","TARJAMAAH","BULURETO RT 001/003 BULUREJO");
INSERT INTO t_inventory_bengkel VALUES("TRUZZZ8N351012460","AUQ100543","B 1110 TB","COUPE","AA","CUST_BR.120919.000008","HENGKY","SURAKARTA");
INSERT INTO t_inventory_bengkel VALUES("KNABX512MDT572658","G4LADP051886","AD 8862 SU","PICANTO","WHITE","CUST_BR.170919.000011","RONY","PRAYUNAN RT3/RW6 PURWODININGRATAN JEBRES");
INSERT INTO t_inventory_bengkel VALUES("MHFJW8EM9H2326008","1TRA249648","AD-9099-NA","INNOVA","BLCK","CUST_BR.170919.000016","NOVIANA DWI LESTARI","TIPES RT 03/04 TIPES SERENGAN SURAKARTA");
INSERT INTO t_inventory_bengkel VALUES("MNTFBUK13Z0078615","HR12396188B","DK 117 NO","MARCH","WHITE","CUST_BR.170919.000012","SRI LESTARI","JL P YONI NO 75 BR PANTI GEDE PEMOGAN DENPASAR");
INSERT INTO t_inventory_bengkel VALUES("MHL2100370L032752","1.12E+12","AD 800","MRCY","BLCK","CUST_BR.170919.000013","RUDY","SURAKARTA");
INSERT INTO t_inventory_bengkel VALUES("MRHCR2640DF301194","K24W31102456","AD 7959 UA","ACCORD","","CUST_BR.170919.000014","SENYUM INDRAKILA, DR. SPM","JL NUSA INDAH II/6A RT 05/ RW 02\nPUNGGAWAN, BANJA");
INSERT INTO t_inventory_bengkel VALUES("MHRRU1850GJ403947","L15Z61035321","AD 8734 BM","HRV","MMT","CUST_BR.180919.000017","AMBARWARI NUNIK ESTININGSIH","SINGORANON 06/08 PULISEN BOYOLALI");
INSERT INTO t_inventory_bengkel VALUES("MHKB3BA1JJK053290","K3MH34206","AD 1892 UT","GRANDMAX","WHITE","CUST_BR.180919.000018","PT MPM RENT","PEPE RT 1/4 LANGENHARJO GROGOL SUKOHARJO");
INSERT INTO t_inventory_bengkel VALUES("MHFXR43G2D1010604","2KDU210880","AD 9163 NU","INNOVA","SILVER","CUST_BR.200919.000019","PT.SUMBER JAYA BAN","JL.VETERAN NO.64 RT 3/1 GAJAHAN PS.KLIWON SKA");
INSERT INTO t_inventory_bengkel VALUES("MALBL51CMHM266798","G4LCGU602848","AD 8434 JM","AGYA","WHITE","CUST_BR.230919.000020","ADRIAN RONALD LALOAN","KANDANG SAPI RT 004/001 TEGALHARJO JEBRES");
INSERT INTO t_inventory_bengkel VALUES("ML320","","AD 8309 UA","MRCY","BLCK","CUST_BR.120919.000008","HENGKY","SURAKARTA");
INSERT INTO t_inventory_bengkel VALUES("KMHST81CMFU521288","G4KEFA665005","AD 7358 CU","HYU","WHITE","CUST_BR.230919.000021","IVANA LUKITO","JL VETERAN NO 203 RT 1/1 SERENGAN SKA");
INSERT INTO t_inventory_bengkel VALUES("MHKM51A2JJK045001","1NRF388289","B 1879 NRP","AVANZA","SILVER","CUST_BR.180919.000018","PT.MPM RENT","SUNBURST CBD LOT II NO.10 JL.KAPTEN SOEBIJANTO DJO");
INSERT INTO t_inventory_bengkel VALUES("MHKB3BA1JEK023277","ME00394","B 9705 NCD","GRANDMAX","WHITE","CUST_BR.180919.000018","PT.MPM RENT","SUNBURST CBD LOT II NO.10 JL.KAPTEN SOEBIJANTO DJO");
INSERT INTO t_inventory_bengkel VALUES("MHKV3BA6JEK005986","MD82386","AD 9382 TU","GRANDMAX","SILVER","CUST_BR.260919.000022","PT.DJAJA HARAPAN PERMATA","JL YOS SUDARSO NO 113 RT 4/8 GAJAHAN PSK SKA");
INSERT INTO t_inventory_bengkel VALUES("1C4HJWK5XEL123984","EL123984","B 535 NNM","JP","MMT","CUST_BR.120919.000008","ASRI VICTORINA EKKLESTA","PERUM HARAPAN INDAH JL ALAMANDA IX BLK Q-K 8 RT 10");
INSERT INTO t_inventory_bengkel VALUES("MHKV5EB2JJK004803","1NRF383974","H 8659 LR","XENIA","SILVER","CUST_BR.130919.000009","MPM RENT","JL SEMERU RAYA  NO.19 RT1/07 GJMK");
INSERT INTO t_inventory_bengkel VALUES("MRHGM2660AP021010","L15A72807386","AD 8181 RS","CITY","BLCK","CUST_BR.270919.000023","KAKA","SURAKARTA");
INSERT INTO t_inventory_bengkel VALUES("MHRRD47504J002350","K20A51045207","AD 7796 HA","CRV","BLCK","CUST_BR.280919.000024","SUGENG TRI RAHARJO","DABAGSARI SEMANGGI RT 2/6 SEMANGGI PASAR KLIWON SU");
INSERT INTO t_inventory_bengkel VALUES("MHKM5EB3JJKO18884","1NRF394826","H 8713 LR","AVANZA","WHITE","CUST_BR.130919.000009","MPM RENT","JL SEMERU RAYA NO.60 RT.05/05 KARANGREJO GJMK SMG");
INSERT INTO t_inventory_bengkel VALUES("MHRRU1850FJ404794","L15Z61005633","AD 9016 XT","HRV","AA","CUST_BR.011019.000025","I WAYAN KARTHANA","MES SRITEX C.5 JL KH SAMANHUDI RT 4/6 JETIS SKH");
INSERT INTO t_inventory_bengkel VALUES("MHRRM1830FJ550873","R20A59461240","H 8056 SY","CRV","BLCK","CUST_BR.120919.000008","ONG SIAN LIANG KURNIAWAN","JL TMN MAGNOLIA BLOK A-9 NO 17 GRAHA PADMA RT 03/0");
INSERT INTO t_inventory_bengkel VALUES("MM6DJ2HAAHW325025","P520459460","B 1977 NRQ","MAZDA2","WHITE","CUST_BR.031019.000026","YENI ANEN EFENDY","JL KINTAMANI XV NO.R45 SUMMARECON SRP RT.009/007 K");
INSERT INTO t_inventory_bengkel VALUES("MPB2XXMXB2CL11351","MGDBCL11351","AD 7267 LF","FORD","MMT","CUST_BR.041019.000027","NURIYAH","GONGGANGAN RT 02/04 BOLON COLOMADU KRA");
INSERT INTO t_inventory_bengkel VALUES("MHKM5PA4JKK053247","2NRF848178","N 1183 BN","AVANZA","BLCK","CUST_BR.130919.000009","MPM RENT","A YANI UTARA 06 PENGADILAN  NO 06");
INSERT INTO t_inventory_bengkel VALUES("MHRRM3850EJ453010","K24Z9-9427302","AD 7999 YP","CRV","SILVER","CUST_BR.081019.000028","TN.YOPE","SURAKARTA");
INSERT INTO t_inventory_bengkel VALUES("MRHDD2860DP410983","L13Z52201673","AD 8957 CP","BRIO","WHITE","CUST_BR.091019.000029","LINDA","PUNGKUK RT 01/11 JETIS JATEN KRA");
INSERT INTO t_inventory_bengkel VALUES("MHFGB8EM0K0430380","GUN142R-MDTMYD","AD 8632 AX","INNOVA","BLCK","CUST_BR.091019.000030","NY.SUTIMAH","PENGILON RT 07/03 MANGUNSARI SALATIGA");
INSERT INTO t_inventory_bengkel VALUES("WD21M73114","Z24975923Y","AD 8888 AT","TERRANO","BLCK","CUST_BR.091019.000031","HARTONO SRI RAHARJO","JL MERAPI BB 7 SLBR RT 1/7 LNHJ GRL SKH");
INSERT INTO t_inventory_bengkel VALUES("WDB90665725781184","","B 7170 NAA","MRCY","SILVER","CUST_BR.091019.000032","SUGENG","SURAKARTA");
INSERT INTO t_inventory_bengkel VALUES("MK2NCWHANJJ003096","4A91DC9043","AD 9282 GR","XPANDER","SILVER","CUST_BR.101019.000033","SUDARSI","JL NAKULA III NO 9 RT 02/02 WONOKARTO WONOGIRI");
INSERT INTO t_inventory_bengkel VALUES("MHKV3BA3JFK040265","K3MG60481","D 1687 ADY","GRANDMAX","SILVER","CUST_BR.180919.000018","PT.MPM RENT","JL CIUMBULEUIT NO 45 BDG");
INSERT INTO t_inventory_bengkel VALUES("MHKG2CK2J7K000298","DAA8910","AD 8895 IM","TERIOS","BLACK","CUST_BR.151019.000034","AMINOTO","JAWENG 01/01 PELEM BOYOLALI");
INSERT INTO t_inventory_bengkel VALUES("MHKM5FA4JHK023595","2NRF584439","H 8732 LG","AVANZA","BLCK","CUST_BR.130919.000009","MPM RENT","JL.SEMERU RAYA NO.19 RT01/07 GJMK SMG");
INSERT INTO t_inventory_bengkel VALUES("JHMRB3863CC330315","K24Z21721278","AD 9035 WB","ODSY","BLCK","CUST_BR.171019.000035","LUSIANTI DEWI","JL SUTAN SYAHRIR 96 RT 006/002 KEPATIHAN JEBRES");
INSERT INTO t_inventory_bengkel VALUES("MHRRU5870JJ701702","R18ZE1153555","AD 9020 YT","HRV","MMT","CUST_BR.191019.000036","DIDIK HARIYANTO","KRANGGAN WETAN NGUMBUL RT 3/1 WIROGUNAN KTS SKH");
INSERT INTO t_inventory_bengkel VALUES("KMFGD27BP1K486126","D4BBY060651","B 9066 NE","HYU","SILVER","CUST_BR.191019.000037","PT PANJI RAMA OTOMOTIF","JL SULTAN ISKANDAR MUDA NO.97 JS");
INSERT INTO t_inventory_bengkel VALUES("JTFSS22PXC0118822","2KD5962733","AD 1054 DB","HIACE","SILVER","CUST_BR.170919.000016","ARIS SANTOSO","PERUM GREND RESIDENCE 1 NO 5 RT 3/5 SINGOPURAN KTS");
INSERT INTO t_inventory_bengkel VALUES("MHFXR42G2F0032001","2KDU706510","B 898 YY","INNOVA","BLCK","CUST_BR.211019.000038","CHRISTOPHER JOHAN CHANDRA","JL TSI BLK NC 8 RT 1/11 JAKBAR");
INSERT INTO t_inventory_bengkel VALUES("MHKM5EB2JJK008569","1NRF430361","AD 8849 ES","AVANZA","SILVER","CUST_BR.180919.000018","PT.MPM RENT","JL HONGGOWONGSO NO 111 D RT 1/3 JAYENGAN SURAKARTA");
INSERT INTO t_inventory_bengkel VALUES("MHRGK5860EJ406777","L15Z51012175","AD 9073 VU","JAZZ","AA","CUST_BR.231019.000039","KUSMIYATI","DUKUHAN BANYUANYAR RT 03/06 BANYUANYAR BJS SKA");
INSERT INTO t_inventory_bengkel VALUES("MHHVB19046K918142","","B 1 BEH","BMW","BLCK","CUST_BR.231019.000040","HERRY TN","SURAKARTA");
INSERT INTO t_inventory_bengkel VALUES("MHKM5EB3JFK001743","1NRF044111","AD 8463 OS","AVANZA","WHITE","CUST_BR.180919.000018","PT.MPM RENT","JL HONGGOWONGSO NO 111 D RT 01/03 JAYENGAN SERENGA");
INSERT INTO t_inventory_bengkel VALUES("MHRDD1850KJ914302","L12B32358620","AD 9234 AO","BRIO","AA","CUST_BR.241019.000041","EKA LESTARI","JL KASUARI B 32 SOLOBARU RT 6/7 LANGENHARJO GROGOL");
INSERT INTO t_inventory_bengkel VALUES("MHRDD1750GJ704521","L12B31812401","B 1357 KIT","BRIO","AA","CUST_BR.301019.000042","RIDWAN ARIF","KALIABANG TENGAH NO 38 RT 03 RW 02 KALIABANG TENGA");
INSERT INTO t_inventory_bengkel VALUES("","","AD 9411 LP","INNOVA","AA","CUST_BR.021119.000043","THOMAS","SOLOBARU SUKOHARJO");
INSERT INTO t_inventory_bengkel VALUES("WDC2511542A086484","27294530871092","B 105 TA","MRCY","SILVER","CUST_BR.021119.000044","TUMBU ASTIANI R","JL BUNGUR RAYA NO.9 RT 03 RW 07 KEL HARJAMUKTI KEC");
INSERT INTO t_inventory_bengkel VALUES("MHRRM3850DJ342329","K24Z99407689","AD 7153 BS","CRV","BLCK","CUST_BR.021119.000045","NURCHOLIS","SURAKARTA");
INSERT INTO t_inventory_bengkel VALUES("MHRGB3850CJ211037","L15A75801908","B 1263 ZFE","FREED","WHITE","CUST_BR.041119.000046","PIALANIA","JL NANGKA RT 002 RW 003 KEDAUNG SAWAGAN DEPOK");
INSERT INTO t_inventory_bengkel VALUES("MNBLS4D110AW311993","WLAT1223B59","AD 8775 LK","FORD","WHITE","CUST_BR.191019.000036","DIDIK HARIYANTO","SURAKARTA");
INSERT INTO t_inventory_bengkel VALUES("MHKS6GJ6JJJ045619","3NRH261839","AD 9351 ST","SIGRA","SILVER","CUST_BR.041119.000047","SRI SUNARYATI","MENDUNGAN NO 1C RT 2/3 PABELAN KTS SKH");
INSERT INTO t_inventory_bengkel VALUES("JHMZF1421DS300006","LEA33001081","B 1700 K","HCRZ","WHITE","CUST_BR.041119.000048","PT ISTANA KEBON JERUK","JL PANJANG NO.200 KEBON JERUK JB");
INSERT INTO t_inventory_bengkel VALUES("MHRDD4870FJ459731","L15Z11216697","AD 9181 HT","MOBILIO","AAM","CUST_BR.061119.000049","DR SUGENG PURNOMO","GODEGAN RT 2/1 GENTAN BDSR SKH");
INSERT INTO t_inventory_bengkel VALUES("ANH208104102","2AZF382464","H 9354 BZ","TVFR","WHITE","CUST_BR.061119.000050","ARIENE RENITA DEWI BUDIMAN","JL ALAMANDA II BLOK B-3/17 RT 12/05 KARANGANYAR GN");
INSERT INTO t_inventory_bengkel VALUES("MHKM5EA3JGK040163","1NRF206917","AD 8421 KT","AVANZA","WHITE","CUST_BR.061119.000051","WINDY SORAYA DEWI","KANDANG MENJANGAN RT 5/14 PUCANGAN KARTASURA SKH");
INSERT INTO t_inventory_bengkel VALUES("MK2KRWPNUHJ003143","4N15UBT5090","AD 18 MS","PAJERO","BLCK","CUST_BR.081119.000052","BINA IKLAS SETYAWATI","BULUSARI RT 01/04 BULUSARI SLOGOHIMO WONOGIRI");
INSERT INTO t_inventory_bengkel VALUES("2C3CCAVG3CH289881","","B 1 FST","CHRYS","WHITE","CUST_BR.061119.000050","BOWO","SURAKARTA");
INSERT INTO t_inventory_bengkel VALUES("MHYKZE81SFJ307156","K14BT1180131","AD 8911 OA","ERTIGA","BLACK","CUST_BR.111119.000053","CHRISTIAN SANJAYA","JL TENTARA PELAJAR 57 BIBIS KULON RT 04/17 GILINGA");
INSERT INTO t_inventory_bengkel VALUES("MHKM5EA2JGK010643","1NRF169970","H 8416 YZ","AVANZA","BLCK","CUST_BR.180919.000018","PT.MPM RENT","JL SEMERU RAYA NO 19 RT 01/07 GJMK SMG");
INSERT INTO t_inventory_bengkel VALUES("MHRDD1770FJ569934","L12B31481808","H 9147 GW","BRIO","MMT","CUST_BR.121119.000054","SITI ROHANA","JL JATISARI RT 2/13 GISIKDRONO SMG BRT");
INSERT INTO t_inventory_bengkel VALUES("MHKM5EA3JGK013284","1NRF123379","AD 9398 OS","AVANZA","SILVER","CUST_BR.180919.000018","PT.MPM RENT","SUNBURST,CBD LOT II NO.10 JL.KAPTEN SOEBIJANTO DJO");
INSERT INTO t_inventory_bengkel VALUES("MHKM5FA3JJK006191","2NRF682288","W 1985 VH","AVANZA","BLACK","CUST_BR.180919.000018","PT.MPM RENT","JL.SEDATI NO.101 RT/RW : 03/05 DS WEDI/GEDANGAN");
INSERT INTO t_inventory_bengkel VALUES("MHKM5EA3JHK078086","1NRF310742","W 1326 SZ","AVANZA","SILVER","CUST_BR.180919.000018","PT.MPM RENT","JL.SEDATI NO.101 RW/RT 03/05 DS WEDI/GEDANGAN");
INSERT INTO t_inventory_bengkel VALUES("MHBG3CG1FGJ044446","HR15733900T","B 1621 NOO","GRANDLIVINA","SILVER","CUST_BR.180919.000018","PT.MPM RENT","SUNBURST,CBD LOT II NO.10 JL.KAPTEN SOEBIJANTO DJO");
INSERT INTO t_inventory_bengkel VALUES("MHRDD1770GJ552867","L12B31494740","H 9400 Y","BRIO","AA","CUST_BR.231119.000056","RATIH ESMIQA HELMEISOEN","SEKAR GADING BLOK R-3 RT 06 RW 03 GUNUNG PATI SEMA");
INSERT INTO t_inventory_bengkel VALUES("MHRDD1850KJ913536","L12B32356662","AD 9189 WS","BRIO","WHITE","CUST_BR.251119.000057","TRI RUSNITA SE MM","KALITAN RT 01/01 PENUMPING  LWY SKA");
INSERT INTO t_inventory_bengkel VALUES("MHKM5EA3JHK071752","1NRF289885","B 1652 NRI","AVANZA","WHITE","CUST_BR.180919.000018","PT.MPM RENT","SUNBURST,CBD LOT II NO.10 JL.KAPTEN SOEBIJANTO DJO");
INSERT INTO t_inventory_bengkel VALUES("MHKM5EA2JJK047225","1NRF405315","B 1883 NRP","AVANZA","BLACK","CUST_BR.180919.000018","PT.MPM RENT","SUNBURST,CBD LOT II NO.10 JL.KAPTEN SOEBIJANTO DJO");
INSERT INTO t_inventory_bengkel VALUES("MHKM5EA2JGK008994","1NRF160311","AD 8944 OH","AVANZA","BLCK","CUST_BR.180919.000018","PT.MPM RENT","JL HONGGOWONGSO NO 111D RT 01/03 JAYENGAN SERENGAN");
INSERT INTO t_inventory_bengkel VALUES("MHKM5EA2JGK009016","1NRF160459","H 8957 VZ","AVANZA","BLCK","CUST_BR.180919.000018","PT.MPM RENT","JL SEMERU RAYA NO.19 RT 01/07 GJMK SMG");
INSERT INTO t_inventory_bengkel VALUES("MHKM5EA2JGJ011939","1NRF102098","H 8847 UZ","AVANZA","BLCK","CUST_BR.180919.000018","PT MPM RENT","JL.SEMERU RAYA NO.19 RT 01/07 GJMK SMG");
INSERT INTO t_inventory_bengkel VALUES("MHRRU1730HJ700850","L15Z6-1157592","K 9379 JK","HRV","WHITE","CUST_BR.261119.000058","CHRISTIN","SURAKARTA");
INSERT INTO t_inventory_bengkel VALUES("MHKG2CJ2J7K009402","","AB 1608 GE","TERIOS","CKLT","CUST_BR.261119.000059","ONGKY","SURAKARTA");
INSERT INTO t_inventory_bengkel VALUES("MHRGE8860CJ207037","L15A7-4758079","B 1371 VMI","JAZZ","WHITE","CUST_BR.261119.000060","HAN","WONOGIRI");
INSERT INTO t_inventory_bengkel VALUES("MHKM5EB3JKK027452","1NRG058240","AD 8570 CO","AVANZA","BLACK","CUST_BR.180919.000018","PT MPM RENT","PEPE RT 1/4 LANGENHARJO GROGOL SKH");
INSERT INTO t_inventory_bengkel VALUES("MHRGE8860EJ301211","L15A77759928","AD 9290 ZS","JAZZ","WHITE","CUST_BR.301119.000062","AHMAD IRAN PRADITA","JL DEMPO SELATAN VII NO 20 RT 3/13 MOJOSONGO JEBRE");
INSERT INTO t_inventory_bengkel VALUES("danang2","m1","p1","ALPHARD","AA","CUST_BR.011019.000025","34","4");



DROP TABLE t_jasa;

CREATE TABLE `t_jasa` (
  `id_jasa` varchar(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `harga_pokok` double NOT NULL,
  `harga_jual` double NOT NULL,
  `diskon` float NOT NULL,
  `ppn` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE t_kwitansi;

CREATE TABLE `t_kwitansi` (
  `no_kwitansi` varchar(20) NOT NULL,
  `tgl_kwitansi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fk_pkb` varchar(20) NOT NULL,
  `total_gross_panel` double NOT NULL,
  `total_gross_part` double NOT NULL,
  `total_diskon_panel` double NOT NULL,
  `total_diskon_part` double NOT NULL,
  `total_netto_panel` double NOT NULL,
  `total_netto_part` double NOT NULL,
  `total_ppn_kwitansi` double NOT NULL,
  `total_kwitansi` double NOT NULL,
  `materai` enum('0','6000') NOT NULL,
  `total_payment` double NOT NULL,
  `keterangan_batal` text NOT NULL,
  `tgl_batal` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`no_kwitansi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_kwitansi VALUES("SI_BR.021019.000027","2019-10-02 08:33:01","PKB_BR.021019.000019","4227272.726900001","0","422727.27269","0","3804545.4542099996","0","380454.545421","3804545.4542099996","0","4184999.999631","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.021119.000051","2019-11-02 10:48:04","PKB_BR.021119.000032","522727.27259999997","2199709.0907","0","109985.454535","522727.27259999997","2089723.636165","261245.0908765","2612450.908765","0","2873695.9996415","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.021119.000052","2019-11-02 11:54:59","PKB_BR.021119.000033","454545.4545","0","0","0","454545.4545","0","45454.54545","454545.4545","0","499999.99995","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.041119.000053","2019-11-04 15:01:02","PKB_BR.041119.000034","363636.3636","0","0","0","363636.3636","0","36363.63636","363636.3636","0","399999.99996","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.051119.000054","2019-11-05 09:25:25","PKB_BR.051119.000035","636363.6362","0","0","0","636363.6362","0","63636.36362","636363.6362","0","699999.99982","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.071019.000028","2019-10-07 15:17:34","PKB_BR.071019.000022","2889000","0","0","0","2889000","0","288900","2889000","0","3177900","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.071019.000029","2019-10-07 15:57:08","PKB_BR.051019.000021","454545.4545","0","0","0","454545.4545","0","45454.54545","454545.4545","0","499999.99995","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.081119.000055","2019-11-08 15:41:31","PKB_BR.081119.000036","409090.909","0","0","0","409090.909","0","40909.0909","409090.909","0","449999.9999","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.091019.000030","2019-10-09 08:40:15","PKB_BR.021019.000020","3430000","1270500","0","0","3430000","1270500","470050","4700500","0","5170550","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.110919.000001","2019-09-11 14:49:43","PKB_BR.110919.000001","3350000","21075708","335000","1053785.4","3015000","20021922.6","2303692.26","23036922.6","0","25340614.86","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.111019.000031","2019-10-11 10:34:21","PKB_BR.111019.000021","1613636.3635","1992727.2727","161363.63635000002","99636.363635","1452272.7271499997","1893090.909065","334536.3636215","3345363.6362149995","0","3679899.9998365","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.120919.000002","2019-09-12 09:43:24","PKB_BR.120919.000002","500000","1141000","60000","57050","440000","1083950","152395","1523950","0","1676345","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.120919.000003","2019-09-12 10:34:22","PKB_BR.120919.000003","999999.9","0","99999.98999999999","0","899999.9099999999","0","89999.991","899999.9099999999","0","989999.901","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.121019.000032","2019-10-12 08:37:40","PKB_BR.121019.000022","1500000","0","150000","0","1350000","0","135000","1350000","0","1485000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.121019.000033","2019-10-12 10:21:19","PKB_BR.121019.000025","2050000","0","0","0","2050000","0","205000","2050000","0","2255000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.140919.000004","2019-09-14 09:26:50","PKB_BR.140919.000007","1999999.9999","0","0","0","1999999.9999","0","199999.99999","1999999.9999","0","2199999.99989","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.140919.000005","2019-09-14 11:24:16","PKB_BR.120919.000004","5150000","0","0","0","5150000","0","515000","5150000","0","5665000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.141019.000034","2019-10-14 08:21:47","PKB_BR.081019.000022","1272727.2726","0","0","0","1272727.2726","0","127272.72726","1272727.2726","0","1399999.99986","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.141019.000035","2019-10-14 15:22:35","PKB_BR.141019.000023","1386363.6361","0","0","0","1386363.6361","0","138636.36361","1386363.6361","0","1524999.99971","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.151119.000056","2019-11-15 13:34:16","PKB_BR.141119.000037","318181.8181","0","0","0","318181.8181","0","31818.18181","318181.8181","0","349999.99991","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.151119.000057","2019-11-15 14:54:26","PKB_BR.151119.000038","2454545.4544999995","0","0","0","2454545.4544999995","0","245454.54545","2454545.4544999995","0","2699999.99995","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.160919.000006","2019-09-16 15:41:10","PKB_BR.130919.000005","1954545.4542","0","0","0","1954545.4542","0","195454.54542","1954545.4542","0","2149999.99962","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.161119.000058","2019-11-16 08:49:15","PKB_BR.161119.000039","2886363.6358999996","0","0","0","2886363.6358999996","0","288636.36359","2886363.6358999996","0","3174999.99949","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.170919.000007","2019-09-17 11:49:36","PKB_BR.140919.000006","3405000","1614140","0","0","3405000","1614140","501914","5019140","0","5521054","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.171019.000036","2019-10-17 15:31:34","PKB_BR.171019.000025","545454.5454","0","0","0","545454.5454","0","54545.45454","545454.5454","0","599999.99994","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.181019.000037","2019-10-18 08:20:57","PKB_BR.181019.000026","1181818.1817","0","0","0","1181818.1817","0","118181.81817","1181818.1817","0","1299999.99987","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.181019.000038","2019-10-18 10:53:02","PKB_BR.181019.000027","909090.909","0","0","0","909090.909","0","90909.0909","909090.909","0","999999.9999","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.181119.000059","2019-11-18 08:18:22","PKB_BR.181119.000040","1363636.3633999997","0","136363.63634","0","1227272.7270600002","0","122727.272706","1227272.7270600002","0","1349999.999766","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.190919.000008","2019-09-19 10:01:06","PKB_BR.190919.000008","1272727.2726","0","0","0","1272727.2726","0","127272.72726","1272727.2726","0","1399999.99986","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.190919.000009","2019-09-19 14:04:03","PKB_BR.190919.000009","1999999.9817999997","0","0","0","1999999.9817999997","0","199999.99818","1999999.9817999997","0","2199999.97998","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.190919.000010","2019-09-19 14:20:31","PKB_BR.190919.000010","1454545.4300000002","0","0","0","1454545.4300000002","0","145454.543","1454545.4300000002","0","1599999.973","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.191019.000039","2019-10-19 11:19:01","PKB_BR.151019.000024","1090909.0909","0","0","0","1090909.0909","0","109090.90909","1090909.0909","0","1199999.99999","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.191119.000060","2019-11-19 08:53:12","PKB_BR.191119.000041","409090.909","0","0","0","409090.909","0","40909.0909","409090.909","0","449999.9999","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.191119.000061","2019-11-19 14:21:01","PKB_BR.191119.000042","3727272.7271","0","0","0","3727272.7271","0","372727.27271","3727272.7271","0","4099999.99981","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.191119.000062","2019-11-19 14:38:10","PKB_BR.191119.000043","590909.0909","0","0","0","590909.0909","0","59090.90909","590909.0909","0","649999.99999","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.201119.000063","2019-11-20 10:36:34","PKB_BR.201119.000044","954545.4545","0","95454.54545","0","859090.90905","0","85909.090905","859090.90905","0","944999.999955","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.201119.000064","2019-11-20 10:45:00","PKB_BR.201119.000045","727272.7272","0","72727.27272","0","654545.45448","0","65454.545448","654545.45448","0","719999.999928","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.211119.000065","2019-11-21 09:17:14","PKB_BR.211119.000046","2913636.3630999997","0","0","0","2913636.3630999997","0","291363.63631","2913636.3630999997","0","3204999.99941","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.211119.000066","2019-11-21 09:46:53","PKB_BR.211119.000047","2909090.9089","0","290909.09089","0","2618181.8180099996","0","261818.181801","2618181.8180099996","0","2879999.999811","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.211119.000067","2019-11-21 14:16:29","PKB_BR.211119.000048","2370000","0","0","0","2370000","0","237000","2370000","0","2607000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.221019.000040","2019-10-22 14:13:32","PKB_BR.221019.000028","818181.8181","0","0","0","818181.8181","0","81818.18181","818181.8181","0","899999.99991","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.221119.000068","2019-11-22 09:32:27","PKB_BR.221119.000050","2840000","0","0","0","2840000","0","284000","2840000","0","3124000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.221119.000069","2019-11-22 10:31:02","PKB_BR.221119.000051","4590909.0905","0","459090.9090500001","0","4131818.1814499996","0","413181.818145","4131818.1814499996","0","4544999.999595","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.230919.000011","2019-09-23 09:31:36","PKB_BR.230919.000011","4727272.726700001","552200","472727.27266999986","0","4254545.45403","552200","480674.545403","4806745.45403","0","5287419.999433","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.240919.000012","2019-09-24 08:43:45","PKB_BR.240919.000012","590909.0909","0","59090.90909","0","531818.18181","0","53181.818181","531818.18181","0","584999.999991","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.240919.000013","2019-09-24 09:18:36","PKB_BR.240919.000013","0","400000","0","0","0","400000","40000","400000","0","440000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.240919.000014","2019-09-24 10:10:47","PKB_BR.170919.000007","5272727.250699999","701800","527272.72507","35090","4745454.525629999","666710","541216.452563","5412164.525629999","0","5953380.978193","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.240919.000015","2019-09-24 10:40:13","PKB_BR.240919.000008","600000","0","0","0","600000","0","60000","600000","0","660000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.240919.000016","2019-09-24 10:50:49","PKB_BR.240919.000009","909090.9","0","0","0","909090.9","0","90909.09","909090.9","0","999999.99","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.240919.000017","2019-09-24 11:04:38","PKB_BR.240919.000010","909090.9016","0","0","0","909090.9016","0","90909.09016","909090.9016","0","999999.99176","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.240919.000018","2019-09-24 11:09:01","PKB_BR.240919.000011","3300000","0","396000","0","2904000","0","290400","2904000","0","3194400","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.241019.000041","2019-10-24 15:19:58","PKB_BR.241019.000031","6318181.8105","2842290","631818.18105","142114.5","5686363.629449999","2700175.5","838653.912945","8386539.129449999","0","9225193.042395","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.250919.000019","2019-09-25 08:31:34","PKB_BR.250919.000012","727273","0","0","0","727273","0","72727.3","727273","0","800000.3","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.250919.000020","2019-09-25 08:39:51","PKB_BR.250919.000014","3372727.2399999998","0","0","0","3372727.2399999998","0","337272.724","3372727.2399999998","0","3709999.964","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.250919.000021","2019-09-25 08:49:51","PKB_BR.250919.000017","3881818.139999999","0","0","0","3881818.139999999","0","388181.814","3881818.139999999","0","4269999.954","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.250919.000022","2019-09-25 08:53:46","PKB_BR.250919.000016","1181818.1779999998","0","0","0","1181818.1779999998","0","118181.8178","1181818.1779999998","0","1299999.9958","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.251019.000042","2019-10-25 14:53:56","PKB_BR.251019.000032","409090.909","0","0","0","409090.909","0","40909.0909","409090.909","0","449999.9999","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.251019.000043","2019-10-25 15:15:35","PKB_BR.211019.000026","590909.0909","0","0","0","590909.0909","0","59090.90909","590909.0909","0","649999.99999","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.251119.000070","2019-11-25 08:42:25","PKB_BR.211019.000027","3681818.1816999996","0","0","0","3681818.1816999996","0","368181.81817","3681818.1816999996","0","4049999.99987","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.251119.000071","2019-11-25 09:28:51","PKB_BR.221119.000052","3272727.2726","0","0","0","3272727.2726","0","327272.72726","3272727.2726","0","3599999.99986","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.251119.000072","2019-11-25 14:14:43","PKB_BR.251119.000053","4045454.5442","3671363.6363","404545.45441999985","0","3640909.089779999","3671363.6363","731227.272608","7312272.726079999","0","8043499.998688","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.260919.000023","2019-09-26 08:15:56","PKB_BR.260919.000017","659090.909","0","0","0","659090.909","0","65909.0909","659090.909","0","724999.9999","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.260919.000024","2019-09-26 09:07:45","PKB_BR.260919.000020","704545.4543999999","677272.7272","0","33863.63636","704545.4543999999","643409.09084","134795.454524","1347954.54524","0","1482749.999764","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.261019.000044","2019-10-26 08:16:52","PKB_BR.261019.000027","4678000","278300","0","0","4678000","278300","495630","4956300","0","5451930","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.261119.000073","2019-11-26 13:37:51","PKB_BR.261119.000054","227272.7272","0","0","0","227272.7272","0","22727.27272","227272.7272","0","249999.99992","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.261119.000074","2019-11-26 15:48:37","PKB_BR.261119.000055","181818.1818","0","0","0","181818.1818","0","18181.81818","181818.1818","0","199999.99998","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.270919.000025","2019-09-27 13:34:35","PKB_BR.270919.000021","227272.7272","0","0","0","227272.7272","0","22727.27272","227272.7272","0","249999.99992","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.271119.000075","2019-11-27 09:25:07","PKB_BR.271119.000056","1136363.6363","0","0","0","1136363.6363","0","113636.36363","1136363.6363","0","1249999.99993","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.281019.000045","2019-10-28 10:16:17","PKB_BR.281019.000030","4431818.1814","0","443181.81814","0","3988636.3632599995","0","398863.636326","3988636.3632599995","0","4387499.999586","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.291019.000046","2019-10-29 09:25:36","PKB_BR.211019.000025","4724545.4535","3229331","0","161466.55","4724545.4535","3067864.45","779240.99035","7792409.9035","0","8571650.89385","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.291019.000047","2019-10-29 10:45:05","PKB_BR.261019.000028","1965000","0","0","0","1965000","0","196500","1965000","0","2161500","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.291019.000048","2019-10-29 13:57:26","PKB_BR.291019.000029","4250000","0","510000","0","3740000","0","374000","3740000","0","4114000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.291019.000049","2019-10-29 15:43:06","PKB_BR.291019.000030","2818181.8105","0","0","0","2818181.8105","0","281818.18105","2818181.8105","0","3099999.99155","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.291119.000076","2019-11-29 08:36:41","PKB_BR.291119.000059","2140000","0","0","0","2140000","0","214000","2140000","0","2354000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.291119.000077","2019-11-29 09:33:17","PKB_BR.291119.000060","1960000","0","0","0","1960000","0","196000","1960000","0","2156000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.291119.000078","2019-11-29 09:56:13","PKB_BR.291119.000061","2140000","0","0","0","2140000","0","214000","2140000","0","2354000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.291119.000079","2019-11-29 10:15:25","PKB_BR.291119.000062","2625000","0","0","0","2625000","0","262500","2625000","0","2887500","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.291119.000080","2019-11-29 14:27:10","PKB_BR.291119.000063","727272.7272","0","63636.36363","0","663636.3635699999","0","66363.636357","663636.3635699999","0","729999.999927","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.291119.000081","2019-11-29 15:20:42","PKB_BR.291119.000064","136363.6363","0","0","0","136363.6363","0","13636.36363","136363.6363","0","149999.99993","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.300919.000026","2019-09-30 11:52:00","PKB_BR.260919.000018","3772727.2724","838181.8181","377272.7272399999","41909.090905","3395454.5451599997","796272.727195","419172.7272355","4191727.2723549996","0","4610899.9995905","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.301119.000082","2019-11-30 08:24:14","PKB_BR.271119.000058","3690000","369050","0","0","3690000","369050","405905","4059050","0","4464955","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.301119.000083","2019-11-30 09:37:23","PKB_BR.301119.000065","1727272.7271","0","172727.27271","0","1554545.45439","0","155454.545439","1554545.45439","0","1709999.999829","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.301119.000084","2019-11-30 13:22:45","PKB_BR.301119.000066","545454.5454","0","0","0","545454.5454","0","54545.45454","545454.5454","0","599999.99994","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.301119.000085","2019-11-30 13:26:48","PKB_BR.301119.000067","500000","0","0","0","500000","0","50000","500000","0","550000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_BR.311019.000050","2019-10-31 11:20:17","PKB_BR.301019.000031","2975000","0","0","0","2975000","0","297500","2975000","0","3272500","","0000-00-00 00:00:00");



DROP TABLE t_kwitansi_or;

CREATE TABLE `t_kwitansi_or` (
  `no_kwitansi_or` varchar(20) NOT NULL,
  `tgl_kwitansi_or` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fk_estimasi` varchar(20) NOT NULL,
  `nilai_kwitansi` double NOT NULL,
  `diskon_or` double DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `tgl_batal` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `keterangan_batal` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`no_kwitansi_or`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_kwitansi_or VALUES("OR_BR.021019.000011","2019-10-02 08:38:23","EST_BR.260919.000033","600000","600000","OR FREE TOTAL,UNIT PA HENDRI ( PT.DJAJA HARAPAN PERMATA )","0000-00-00 00:00:00","");
INSERT INTO t_kwitansi_or VALUES("OR_BR.021119.000018","2019-11-02 10:51:18","EST_BR.301019.000070","300000","0","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","");
INSERT INTO t_kwitansi_or VALUES("OR_BR.110919.000001","2019-09-11 15:25:26","EST_BR.110919.000001","300000","0","","0000-00-00 00:00:00","");
INSERT INTO t_kwitansi_or VALUES("OR_BR.111019.000012","2019-10-11 10:37:55","EST_BR.230919.000026","600000","0","PEMBAYARAN OR BODY REPAIR","0000-00-00 00:00:00","");
INSERT INTO t_kwitansi_or VALUES("OR_BR.120919.000002","2019-09-12 09:41:58","EST_BR.120919.000002","300000","0","PEMBAYARAN OR","0000-00-00 00:00:00","");
INSERT INTO t_kwitansi_or VALUES("OR_BR.121019.000013","2019-10-12 08:35:31","EST_BR.101019.000050","300000","0","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","");
INSERT INTO t_kwitansi_or VALUES("OR_BR.140919.000003","2019-09-14 11:28:25","EST_BR.120919.000004","900000","0","PEMBAYARAN OR","0000-00-00 00:00:00","");
INSERT INTO t_kwitansi_or VALUES("OR_BR.151119.000019","2019-11-15 13:36:52","EST_BR.111119.000082","300000","0","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","");
INSERT INTO t_kwitansi_or VALUES("OR_BR.211119.000020","2019-11-21 09:48:31","EST_BR.081119.000080","600000","600000","OR FREE TOTAL","0000-00-00 00:00:00","");
INSERT INTO t_kwitansi_or VALUES("OR_BR.221119.000021","2019-11-22 08:59:06","EST_BR.121119.000084","600000","0","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","");
INSERT INTO t_kwitansi_or VALUES("OR_BR.221119.000022","2019-11-22 10:35:46","EST_BR.061119.000079","900000","900000","OR FREE TOTAL UNIT PA KARDI KOPASSUS,SUDAH AMBIL 3 PANEL : PINTU FR LH,TRIPLANG LH,VELG FR LH DENGAN NOMINAL 1.215.000 BUAT GANTI UANG FREE OR 900.000","0000-00-00 00:00:00","");
INSERT INTO t_kwitansi_or VALUES("OR_BR.240919.000004","2019-09-24 10:16:43","EST_BR.170919.000017","1200000","1200000","OR FREE TOTAL","0000-00-00 00:00:00","");
INSERT INTO t_kwitansi_or VALUES("OR_BR.240919.000005","2019-09-24 10:42:41","EST_BR.170919.000013","300000","0","PEMBAYARAN OR","0000-00-00 00:00:00","");
INSERT INTO t_kwitansi_or VALUES("OR_BR.240919.000006","2019-09-24 11:10:23","EST_BR.170919.000015","300000","300000","OR FREE","0000-00-00 00:00:00","");
INSERT INTO t_kwitansi_or VALUES("OR_BR.241019.000014","2019-10-24 15:24:01","EST_BR.241019.000066","1200000","300000","OR FREE 1X Rp.300000,sudah ambil 1 panel triplang rh nominal 405000 buat pengganti free OR","0000-00-00 00:00:00","");
INSERT INTO t_kwitansi_or VALUES("OR_BR.250919.000007","2019-09-25 08:42:53","EST_BR.170919.000019","900000","900000","OR FREE TOTAL, UNIT MBAK ARI MAZDA","0000-00-00 00:00:00","");
INSERT INTO t_kwitansi_or VALUES("OR_BR.250919.000008","2019-09-25 08:53:00","EST_BR.180919.000020","300000","300000","OR FREE, UNIT PAK ASA (BAKUL)","0000-00-00 00:00:00","");
INSERT INTO t_kwitansi_or VALUES("OR_BR.250919.000009","2019-09-25 09:07:55","EST_BR.170919.000016","300000","300000","UNIT PA ARIS RENTAL","0000-00-00 00:00:00","");
INSERT INTO t_kwitansi_or VALUES("OR_BR.251119.000023","2019-11-25 09:20:32","EST_BR.211019.000058","600000","600000","OR FREE TOTAL UNIT PA ARIS RENTAL,SUDAH AMBIL 2 PANEL PINTU RR LH DAN PILLAR FR LH DENGAN JUMLAH 800000 BUAT GANTI UANG FREE OR 600000","0000-00-00 00:00:00","");
INSERT INTO t_kwitansi_or VALUES("OR_BR.251119.000024","2019-11-25 09:38:15","EST_BR.221119.000091","600000","600000","OR FREE TOTAL UNIT PA ARIS RENTAL,SUDAH AMBIL 2 PANEL KAP BAGASI DAN VELG RR LH DENGAN JUMLAH 600000,BUAT GANTI UANG FREE OR 600000","0000-00-00 00:00:00","");
INSERT INTO t_kwitansi_or VALUES("OR_BR.281019.000015","2019-10-28 10:46:23","EST_BR.281019.000068","900000","300000","OR FREE 1X Rp.300000,sudah ambil 1 panel quarter rh 495000 buat ganti uang free or","0000-00-00 00:00:00","");
INSERT INTO t_kwitansi_or VALUES("OR_BR.291019.000016","2019-10-29 14:12:29","EST_BR.241019.000064","600000","600000","OR FREE TOTAL,SUDAH AMBIL PANEL BUMPER RR DAN VELG RR LH 616000 BUAT GANTI FREE OR","0000-00-00 00:00:00","");
INSERT INTO t_kwitansi_or VALUES("OR_BR.300919.000010","2019-09-30 11:54:32","EST_BR.230919.000024","900000","900000","OR FREE TOTAL UNIT DAGANGAN BP.THOMAS","0000-00-00 00:00:00","");
INSERT INTO t_kwitansi_or VALUES("OR_BR.311019.000017","2019-10-31 11:25:55","EST_BR.011019.000040","300000","0","PEMBAYARAN PERBAIKAN BODY REPAIR","0000-00-00 00:00:00","");



DROP TABLE t_nonpkb;

CREATE TABLE `t_nonpkb` (
  `id_nonpkb` varchar(50) NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp(),
  `kategori` varchar(10) NOT NULL,
  `fk_no_chasis` varchar(50) NOT NULL,
  `fk_no_mesin` varchar(50) NOT NULL,
  `fk_no_polisi` varchar(50) NOT NULL,
  `fk_customer` varchar(50) NOT NULL,
  `fk_asuransi` varchar(50) NOT NULL,
  `km_masuk` varchar(50) NOT NULL,
  `fk_user` varchar(50) NOT NULL,
  `total_gross_harga_cuci` double NOT NULL,
  `total_diskon_rupiah_cuci` double NOT NULL,
  `total_netto_harga_cuci` double NOT NULL,
  `total_gross_harga_salon` double NOT NULL,
  `total_diskon_rupiah_salon` double NOT NULL,
  `total_netto_harga_salon` double NOT NULL,
  `total_gross_harga_jasa` double NOT NULL,
  `total_diskon_rupiah_jasa` double NOT NULL,
  `total_netto_harga_jasa` double NOT NULL,
  `tgl_batal` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `tgl_nonpkb_selesai` date NOT NULL,
  `approved` enum('0','1') DEFAULT '0',
  `namamobil` varchar(100) NOT NULL,
  PRIMARY KEY (`id_nonpkb`),
  KEY `id_nonpkb` (`id_nonpkb`),
  KEY `id_nonpkb_2` (`id_nonpkb`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_nonpkb VALUES("NonPKB_BR.011019.000126","2019-10-01 10:31:51","","","","AD 9116 NS","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-10-01","1","KIJANG INNOVA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.011019.000127","2019-10-01 14:44:30","","","","AD 7410 JG","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-10-01","1","VERNA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.011019.000128","2019-10-01 15:18:37","","","","AD 1769 UGY","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-10-01","1","EVALIA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.020819.000001","2019-08-02 14:33:54","","","","B 2573 SBZ","","","","admin","50000","0","50000","0","0","0","50000","0","50000","0000-00-00 00:00:00","2019-08-02","1","");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.020819.000002","2019-08-02 14:45:39","","","","B 1098 UCY","","","","admin","35000","0","35000","0","0","0","35000","0","35000","0000-00-00 00:00:00","2019-08-02","1","");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.020819.000003","2019-08-02 14:48:03","","","","UNIMOX","","","","admin","35000","0","35000","0","0","0","35000","0","35000","0000-00-00 00:00:00","2019-08-02","1","");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.020819.000004","2019-08-02 15:11:06","","","","AD 9108 ZB","","","","admin","35000","0","35000","0","0","0","35000","0","35000","0000-00-00 00:00:00","2019-08-02","1","");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.020819.000005","2019-08-02 15:13:04","","","","DA 1072 BN","","","","admin","35000","9999.5","25000.5","0","0","0","35000","9999.5","25000.5","0000-00-00 00:00:00","2019-08-02","1","");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.020819.000006","2019-08-02 15:38:51","","","","B 8216 L","","","","admin","35000","0","35000","0","0","0","35000","0","35000","0000-00-00 00:00:00","2019-08-02","1","");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.020919.000072","2019-09-02 12:55:29","","","","B 7648 SDA","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-09-02","1","HIACE");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.020919.000073","2019-09-02 15:01:31","","","","AD 4789 EO","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-09-02","1","VIXION");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.020919.000074","2019-09-02 15:40:43","","","","AD 6959 QH","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-09-02","1","YAMAHA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.020919.000075","2019-09-02 15:42:31","","","","AD 4072 AAG","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-09-02","1","VARIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.020919.000076","2019-09-02 15:43:30","","","","AD 7410 JG","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-09-02","1","VERNA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.021219.000208","2019-12-02 11:53:03","","","","B 4803 FMN","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-12-02","1","YAMAHA N-MAX");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.021219.000209","2019-12-02 17:50:31","","","","B 1337 CBB","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-12-02","1","PORSCHE BOXSTER");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.030919.000077","2019-09-03 10:11:30","","","","K 9379 JK","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-09-03","1","HRV");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.030919.000078","2019-09-03 13:50:44","","","","AD 3003 ZO","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-09-03","1","VARIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.030919.000079","2019-09-03 15:11:25","","","","B 1419 Q","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-09-03","1","MERCY");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.040919.000080","2019-09-04 15:27:58","","","","L 1715 WJ","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-09-04","1","SIGRA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.041019.000129","2019-10-04 09:15:33","","","","AD 8186 WA","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-10-04","1","SANTA FE");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.041019.000130","2019-10-04 09:16:18","","","","AB 1593 CN","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-10-04","1","RUSH");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.041019.000131","2019-10-04 13:22:47","","","","B 1278 CKZ","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-10-04","1","MOBILIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.041119.000172","2019-11-04 10:12:23","","","","AD 1272 JA","","","","admin","45000","0","45000","0","0","0","45000","0","45000","0000-00-00 00:00:00","2019-11-04","1","TOYOTA HIACE");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.041119.000173","2019-11-04 13:21:26","","","","B 805 PPA","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-11-04","1","FORD ECO SPORT");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.041119.000174","2019-11-04 13:55:26","","","","AD 8728 IU","","","","admin","0","0","0","300000","0","300000","300000","0","300000","0000-00-00 00:00:00","2019-11-04","1","DAIHATSU AYLA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.041119.000175","2019-11-04 14:19:33","","","","L 1764 IT","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-11-04","1","TOYOTA ALPHARD");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.050819.000007","2019-08-05 14:14:35","","","","AD 8577 U","","","","admin","35000","0","35000","0","0","0","35000","0","35000","0000-00-00 00:00:00","2019-08-05","1","BRIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.050819.000008","2019-08-05 14:28:22","","","","B 1278 CKZ","","","","admin","35000","0","35000","0","0","0","35000","0","35000","0000-00-00 00:00:00","2019-08-05","1","MOBILIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.051019.000132","2019-10-05 09:35:21","","","","AD 7259 CS","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-10-05","1","LAND CRUISIER");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.051119.000176","2019-11-05 09:21:34","","","","AA 3661 UK","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-11-05","1","HONDA VARIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.051119.000177","2019-11-05 12:20:34","","","","AD 9451 IU","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-11-05","1","HONDA MOBILIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.051219.000210","2019-12-05 11:20:11","","","","B 1098 UCY","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-12-05","1","LAND CRUISER");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.060819.000009","2019-08-06 09:27:36","","","","B 7648 SDA","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-08-06","1","HIACE");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.060819.000010","2019-08-06 09:30:22","","","","N 1081 RM","","","","admin","35000","0","35000","0","0","0","35000","0","35000","0000-00-00 00:00:00","2019-08-06","1","BRIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.060819.000011","2019-08-06 10:00:17","","","","AD 7410 JG","","","","admin","35000","0","35000","0","0","0","35000","0","35000","0000-00-00 00:00:00","2019-08-06","1","VERNA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.060819.000012","2019-08-06 10:06:27","","","","AD 9216 YY","","","","admin","35000","0","35000","0","0","0","35000","0","35000","0000-00-00 00:00:00","2019-08-06","1","YARIS");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.060819.000013","2019-08-06 10:10:34","","","","AD 9415 RT","","","","admin","35000","7000","28000","0","0","0","35000","7000","28000","0000-00-00 00:00:00","2019-08-06","1","LIVINA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.060819.000014","2019-08-06 15:28:43","","","","AD 7289 CU","","","","admin","0","0","0","500000","0","500000","500000","0","500000","0000-00-00 00:00:00","2019-08-06","1","PAJERO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.060919.000081","2019-09-06 08:44:19","","","","D 1427 BB","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-09-06","1","LAND CRUISIER");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.060919.000082","2019-09-06 10:46:29","","","","N 1490 DE","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-09-06","1","CRV");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.061119.000178","2019-11-06 14:03:55","","","","B 189 HB","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-11-06","1","VOLVO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.061119.000179","2019-11-06 14:17:46","","","","AD 8434 JM","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-11-06","1","HYUNDAI I20");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.061219.000211","2019-12-06 09:37:59","","","","G 8528 CJ","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-12-06","0","HONDA MOBILIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.061219.000212","2019-12-06 10:19:31","","","","AD 8472 WU","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-12-06","1","DATSUN GO PANCA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.070819.000015","2019-08-07 13:27:24","","","","AD 3297 ACB","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-08-07","1","SCOOPY");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.070819.000016","2019-08-07 13:30:39","","","","AD 2553 IU","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-08-07","1","VARIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.070819.000017","2019-08-07 14:01:56","","","","AD 7783 BF","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-08-07","1","COUPE");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.070919.000083","2019-09-07 10:50:15","","","","B 1098 UCY","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-09-07","1","LAND CRUISIER");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.071019.000133","2019-10-07 08:38:09","","","","AD 8442 ES","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-10-07","1","SIGRA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.071019.000134","2019-10-07 10:03:37","","","","B 7648 SDA","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-10-07","1","HIACE");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.071119.000180","2019-11-07 08:03:12","","","","AD 3484 EU","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-11-07","1","YAMAHA VIXION");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.071119.000181","2019-11-07 08:05:18","","","","AD 8931 VU","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-11-07","1","HYUNDAI GRAND AVEGA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.071119.000182","2019-11-07 13:17:22","","","","B 1617 H","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-11-07","1","HONDA CRV");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.080819.000018","2019-08-08 10:02:09","","","","B 7648 SDA","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-08-08","1","HIACE");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.081019.000135","2019-10-08 14:18:44","","","","AD 3945 ATF","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-10-08","1","VARIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.081019.000136","2019-10-08 14:19:40","","","","DK 1036 AR","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-10-08","1","HYUNDAI");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.081019.000137","2019-10-08 14:21:47","","","","B 1802 UK","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-10-08","1","ALPHARD");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.081019.000138","2019-10-08 14:41:17","","","","AD 7410 JG","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-10-08","1","VERNA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.081019.000139","2019-10-08 14:42:37","","","","AD 8577 U","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-10-08","1","BRIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.081119.000183","2019-11-08 10:10:46","","","","AD 8469 MA","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-11-08","1","DAIHATSU XENIA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.081119.000184","2019-11-08 13:56:34","","","","AD 5278 IS","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-11-08","1","SUSUKI NEX");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.081119.000185","2019-11-08 17:00:31","","","","AD 7410 JG","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-11-08","1","HYUNDAI VERNA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.081119.000186","2019-11-08 17:08:15","","","","AD 9206 AP","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-11-08","1","CHEVROLET AVEO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.090819.000019","2019-08-09 09:26:42","","","","AE 1908 DK","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-08-09","1","LAND CRUISIER");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.090819.000020","2019-08-09 10:41:01","","","","D 1427 BB","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-08-09","1","LAND CRUISIER");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.090919.000084","2019-09-09 09:14:47","","","","AD 800","","","","admin","0","0","0","300000","0","300000","300000","0","300000","0000-00-00 00:00:00","2019-09-09","1","MERCY");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.090919.000085","2019-09-09 13:46:18","","","","AD 7855 JB","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-09-09","1","FORTUNER");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.091019.000140","2019-10-09 08:06:23","","","","AD 9020 YT","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-10-09","1","HRV");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.091019.000141","2019-10-09 09:20:21","","","","B 1278 CKZ","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-10-09","1","MOBILIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.091019.000142","2019-10-09 09:21:20","","","","B 1530 FRQ","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-10-09","1","MOBILIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.091019.000143","2019-10-09 10:00:09","","","","AD 4466 XM","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-10-09","1","scoopy");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.091019.000144","2019-10-09 13:54:13","","","","AD 5303 CH","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-10-09","1","BEAT");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.100819.000021","2019-08-10 10:01:10","","","","H 8759 KZ","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-08-10","1","HARIER");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.100819.000022","2019-08-10 11:09:36","","","","AD 431 N","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-08-10","1","HYUNDAI H1");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.100819.000023","2019-08-10 11:11:36","","","","H 8425 NZ","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-08-10","1","HYUNDAI KONA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.100919.000086","2019-09-10 08:52:04","","","","AA 3661 UK","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-09-10","1","VARIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.100919.000087","2019-09-10 08:53:30","","","","AD 5303 CH","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-09-10","1","BEAT");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.100919.000088","2019-09-10 14:53:42","","","","AB 1138 BJ","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-09-10","1","MAZDA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.101019.000145","2019-10-10 08:39:31","","","","AD 9323 CP","","","","admin","0","0","0","400000","0","400000","400000","0","400000","0000-00-00 00:00:00","2019-10-10","1","MOBILIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.101019.000146","2019-10-10 15:33:43","","","","AD 3945 ATF","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-10-10","1","VARIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.110919.000089","2019-09-11 09:04:46","","","","AD 7513 QE","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-09-11","1","CIVIC");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.110919.000090","2019-09-11 10:18:13","","","","AD 7095 LA","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-09-11","1","CORONA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.111019.000147","2019-10-11 08:27:23","","","","B 7648 SDA","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-10-11","1","HIACE");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.111019.000148","2019-10-11 08:36:49","","","","AD 2176 BK","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-10-11","1","JUPITER");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.111019.000149","2019-10-11 09:27:19","","","","AD 2353 ALF","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-10-11","1","BEAT");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.111019.000150","2019-10-11 13:34:29","","","","AD 1761 PS","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-10-11","1","HILUX");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.111019.000151","2019-10-11 14:49:41","","","","AD 8576 XA","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-10-11","1","ODDYSEY");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.120919.000091","2019-09-12 08:40:56","","","","AD 8970 SG","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-09-12","1","INNOVA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.120919.000092","2019-09-12 08:55:38","","","","B 207 AB","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-09-12","1","LAND CRUISIER");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.120919.000093","2019-09-12 12:54:25","","","","AD 9379 ZS","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-09-12","1","AVANZA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.120919.000094","2019-09-12 15:07:53","","","","L 1149 AY","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-09-12","1","SANTAFE");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.120919.000095","2019-09-12 15:09:06","","","","AD 2353 ALF","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-09-12","1","BEAT");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.120919.000096","2019-09-12 15:10:03","","","","H 6126 AH","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-09-12","1","FINO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.121119.000187","2019-11-12 09:40:17","","KMHS381CMLU236334","D4HBKU028050","","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-11-12","1","HYUNDAI GRAND SANTA FE");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.121119.000188","2019-11-12 10:12:40","","","","DA 1072 BN","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-11-12","1","TOYOTA INNOVA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.121119.000189","2019-11-12 10:17:51","","","","G 8528 CJ","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-11-12","1","HONDA MOBILIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.131119.000190","2019-11-13 09:48:34","","","","AD 8577 U","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-11-13","1","HONDA BRIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.131119.000191","2019-11-13 15:44:11","","","","AD 8596 ST","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-11-13","1","HONDA VARIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.140819.000025","2019-08-14 07:55:41","","","","AD 431 N","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-08-14","1","HYUNDAI H1");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.140819.000026","2019-08-14 07:59:05","","","","G 8528 CJ","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-08-14","1","MOBILIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.140919.000097","2019-09-14 11:01:46","","","","AD 6260 NO","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-09-14","1","VARIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.150819.000027","2019-08-15 08:02:15","","","","AD 8784 XA","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-08-15","1","MOBILIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.150819.000028","2019-08-15 12:38:21","","","","R 8901 CH","","","","admin","30000","4500","25500","0","0","0","30000","4500","25500","0000-00-00 00:00:00","2019-08-15","1","AVEGA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.150819.000029","2019-08-15 12:42:01","","","","N 637 AO","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-08-15","1","PEUGEOT");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.150819.000031","2019-08-15 15:32:17","","","","AD 8577 U","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-08-15","1","BRIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.151019.000152","2019-10-15 08:18:50","","","","B 805 PPA","","","","admin","0","0","0","2000000","0","2000000","2000000","0","2000000","0000-00-00 00:00:00","2019-10-15","1","FORD ECO SPORT");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.151019.000153","2019-10-15 08:20:12","","","","AD 7796 HA","","","","admin","0","0","0","600000","0","600000","600000","0","600000","0000-00-00 00:00:00","2019-10-15","1","CRV");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.151019.000154","2019-10-15 08:20:51","","","","AD 8957 CP","","","","admin","0","0","0","350000","0","350000","350000","0","350000","0000-00-00 00:00:00","2019-10-15","1","BRIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.151019.000155","2019-10-15 14:00:51","","","","AD 8026 KF","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-10-15","1","HYUNDAI");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.151019.000156","2019-10-15 14:23:12","","","","B 207 AB","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-10-15","1","LAND CRUISIER");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.151019.000157","2019-10-15 14:49:47","","","","AD 9411 LP","","","","admin","0","0","0","200000","0","200000","200000","0","200000","0000-00-00 00:00:00","2019-10-15","1","KIJANG INNOVA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.151019.000158","2019-10-15 15:43:13","","","","AD 9182 HT","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-10-15","1","GRAND AVEGA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.151119.000192","2019-11-15 09:25:09","","","","AD 9020 YT","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-11-15","1","HONDA HRV");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.151119.000193","2019-11-15 12:50:18","","","","AD 177 EY","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-11-15","1","TOYOTA KIJANG INNOVA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.160819.000032","2019-08-16 10:06:53","","","","AD 8762 HA","","","","admin","0","0","0","1000000","0","1000000","1000000","0","1000000","0000-00-00 00:00:00","2019-08-16","1","HILUX");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.160819.000033","2019-08-16 10:59:00","","","","AD 8813 UH","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-08-16","1","KIJANG INNOVA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.160819.000034","2019-08-16 15:18:38","","","","AD 9250 HU","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-08-16","1","AVEGA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.160919.000098","2019-09-16 08:20:21","","","","AE 1908 DK","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-09-16","1","LAND CRUISIER");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.160919.000099","2019-09-16 08:21:18","","","","BARU","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-09-16","1","KONA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.160919.000100","2019-09-16 08:22:19","","","","B 1589 NRJ","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-09-16","1","JAZZ");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.160919.000101","2019-09-16 08:41:40","","","","H 8923 WY","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-09-16","1","CHEVROLET");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.160919.000102","2019-09-16 11:36:18","","","","AD 9034 OT","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-09-16","1","AVANZA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.160919.000103","2019-09-16 13:13:38","","","","K 9379 JK","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-09-16","1","HRV");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.160919.000104","2019-09-16 15:53:01","","","","L 1764 IT","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-09-16","1","ALPHARD");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.161119.000194","2019-11-16 08:33:01","","","","AD 8442 ES","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-11-16","1","DAIHATSU SIGRA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.161119.000195","2019-11-16 11:33:09","","","","AD 8434 JM","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-11-16","1","HYUNDAI I20");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.170919.000105","2019-09-17 08:44:42","","","","N 1490 DE","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-09-17","1","CRV");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.170919.000106","2019-09-17 12:04:25","","","","AD 7513 QE","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-09-17","1","CIVIC");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.171019.000159","2019-10-17 09:02:28","","","","AD 9355 TU","","","","admin","0","0","0","450000","0","450000","450000","0","450000","0000-00-00 00:00:00","2019-10-17","1","MOBILIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.171019.000160","2019-10-17 13:03:08","","","","AD 7095 LA","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-10-17","1","CORONA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.171019.000161","2019-10-17 13:25:28","","","","AD 8505 NM","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-10-17","1","JAZZ");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.181119.000196","2019-11-18 10:04:41","","","","AD 8921 KS","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-11-18","1","HONDA FREED");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.181119.000197","2019-11-18 13:32:29","","","","B 1098 UCY","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-11-18","1","TOYOTA LAND CRUISER");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.190819.000035","2019-08-19 13:20:09","","","","AD 5303 CH","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-08-19","1","BEAT");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.190819.000036","2019-08-19 13:36:11","","","","L 1764 IT","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-08-19","1","ALPHARD");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.190819.000037","2019-08-19 14:04:40","","","","H 9340 BR","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-08-19","1","SERENA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.190819.000038","2019-08-19 14:53:51","","","","AD 7095 LA","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-08-19","1","CORONA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.190819.000039","2019-08-19 14:56:05","","","","AD 7190 CS","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-08-19","1","TAFT");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.190919.000107","2019-09-19 09:17:13","","","","B 2247 VZ","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-09-19","1","HYUNDAI H1");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.190919.000108","2019-09-19 15:59:55","","","","B 1098 UCY","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-09-19","1","LAND CRUISIER");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.191119.000198","2019-11-19 14:02:41","","","","AD 9108 KF","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-11-19","1","DAIHATSU ZEBRA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.200919.000109","2019-09-20 14:15:00","","","","AD 1337 CBB","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-09-20","1","SPORT");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.210819.000041","2019-08-21 15:26:10","","","","AE 1592 M","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-08-21","1","KIJANG INNOVA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.210819.000042","2019-08-21 15:49:31","","","","AD 2176 BK","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-08-21","1","JUPITER");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.210919.000110","2019-09-21 08:10:06","","","","AD 9451 IU","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-09-21","1","MOBILIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.210919.000111","2019-09-21 09:50:38","","","","AD 9247 UP","","","","admin","0","0","0","500000","0","500000","500000","0","500000","0000-00-00 00:00:00","2019-09-21","1","MOBILIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.210919.000112","2019-09-21 09:52:45","","","","AD 4072 AAG","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-09-21","1","VARIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.210919.000113","2019-09-21 09:53:17","","","","AD 6044 AOD","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-09-21","1","CB");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.210919.000114","2019-09-21 10:18:58","","","","AD 4204 AF","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-09-21","1","BEAT");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.210919.000115","2019-09-21 12:51:24","","","","AB 1520 DT","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-09-21","1","GRAND AVEGA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.211019.000162","2019-10-21 13:43:10","","","","B 1628 COZ","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-10-21","1","TOYOTA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.220819.000043","2019-08-22 10:37:02","","","","AD 8442 ES","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-08-22","1","SIGRA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.220819.000044","2019-08-22 12:44:01","","","","AD 8421 KT","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-08-22","1","AVANZA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.220819.000045","2019-08-22 14:20:36","","","","AD 7129 AU","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-08-22","1","ACCENT");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.220819.000046","2019-08-22 15:02:21","","","","H 9426 UP","","","","admin","0","0","0","300000","0","300000","300000","0","300000","0000-00-00 00:00:00","2019-08-22","1","BRIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.220819.000047","2019-08-22 15:42:51","","","","B 1762 UGY","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-08-22","1","EVALIA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.230819.000048","2019-08-23 11:04:15","","","","SOUL","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-08-23","1","MIO SOUL");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.230819.000049","2019-08-23 13:35:32","","","","AD 8151 NK","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-08-23","1","LAND CRUISIER");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.230819.000050","2019-08-23 13:37:14","","","","AD 7513 QE","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-08-23","1","CIVIC");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.230819.000051","2019-08-23 14:52:40","","","","AD 2353 ALF","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-08-23","1","BEAT");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.230919.000116","2019-09-23 12:50:48","","","","B 1278 CKZ","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-09-23","1","MOBILIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.230919.000117","2019-09-23 13:03:53","","","","AD 5278 IS","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-09-23","1","NEX");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.230919.000118","2019-09-23 15:16:08","","","","A 1264 XC","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-09-23","1","CORONA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.230919.000119","2019-09-23 15:38:52","","","","B 7648 SDA","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-09-23","1","HIACE");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.231119.000199","2019-11-23 10:22:53","","","","AD 7410 JG","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-11-23","1","HYUNDAI VERNA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.231119.000200","2019-11-23 10:32:17","","","","AD 8638 KS","","","","admin","0","0","0","300000","0","300000","300000","0","300000","0000-00-00 00:00:00","2019-11-23","1","DAIHATSU AYLA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.240819.000052","2019-08-24 09:22:29","","","","AD 9216 YY","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-08-24","1","YARIS");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.240819.000053","2019-08-24 09:32:09","","","","AD 9034 OT","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-08-24","1","AVANZA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.240819.000054","2019-08-24 11:35:37","","","","SANTAFE","","","","admin","0","0","0","4000000","1000000","3000000","4000000","1000000","3000000","0000-00-00 00:00:00","2019-08-24","1","SANTAFE");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.241019.000163","2019-10-24 08:21:26","","","","AD 8442 ES","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-10-24","1","DAIHATSU SIGRA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.241019.000164","2019-10-24 11:43:26","","MHRDD1870FJ510974","L12B31453311","AD 8608 YU","","","","admin","0","0","0","450000","0","450000","450000","0","450000","0000-00-00 00:00:00","2019-10-28","1","HONDA BRIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.241019.000165","2019-10-24 13:42:37","","","","AD 1844 YT","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-10-24","1","SUZUKI CARRY");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.250919.000120","2019-09-25 09:13:03","","","","B 1568 NCQ","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-09-25","1","LAND CRUISIER");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.250919.000121","2019-09-25 09:13:36","","","","AD 8469 MA","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-09-25","1","XENIA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.250919.000122","2019-09-25 14:05:07","","","","AD 4204 FA","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-09-25","1","BEAT");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.251119.000201","2019-11-25 08:10:15","","","","AD 6044 AOD","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-11-25","1","HONDA CBR");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.251119.000202","2019-11-25 15:05:46","","","","AD 8870 L","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-11-25","1","HONDA STREAM");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.251119.000203","2019-11-25 16:09:58","","","","B 1278 CKZ","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-11-25","1","HONDA MOBILIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.260819.000055","2019-08-26 09:00:22","","","","B 1278 CKZ","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-08-26","1","MOBILIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.260819.000056","2019-08-26 09:01:31","","","","AD 6182 XS","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-08-26","1","SPIN");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.260819.000057","2019-08-26 14:10:41","","","","AD 1951 BB","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-08-26","1","HYUNDAI H1");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.260819.000058","2019-08-26 14:47:14","","","","AB 1806 EU","","","","admin","0","0","0","500000","0","500000","500000","0","500000","0000-00-00 00:00:00","2019-08-26","1","YARIS");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.260819.000059","2019-08-26 15:25:42","","","","AD 8777 HH","","","","admin","0","0","0","350000","0","350000","350000","0","350000","0000-00-00 00:00:00","2019-08-26","1","MAZDA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.260819.000060","2019-08-26 16:04:29","","","","N 1490 DE","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-08-26","1","CRV");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.260819.000061","2019-08-26 16:06:41","","","","A 1264 XC","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-08-26","1","CORONA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.260819.000062","2019-08-26 16:06:44","","","","A 1264 XC","","","","admin","30000","0","30000","0","0","0","30000","0","30000","2019-08-29 00:00:00","2019-08-26","1","CORONA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.260819.000063","2019-08-26 16:13:49","","","","B 7648 SDA","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-08-26","1","HIACE");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.261019.000166","2019-10-26 12:44:05","","","","N 1490 DE","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-10-26","1","HONDA CRV");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.270819.000064","2019-08-27 10:25:37","","","","B 1208 PM","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-08-27","1","ALPHARD");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.280819.000065","2019-08-28 09:38:15","","","","B 1336 PKA","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-08-28","1","AVANZA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.280819.000066","2019-08-28 14:01:01","","","","AD 8503 OS","","","","admin","45000","0","45000","0","0","0","45000","0","45000","0000-00-00 00:00:00","2019-08-28","1","BRV");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.280819.000067","2019-08-28 14:44:54","","","","B 1098 UCY","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-08-28","1","LAND CRUISIER");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.280919.000123","2019-09-28 09:51:15","","","","HYUNDAI H1","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-09-28","1","HYUNDAI H1");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.281019.000167","2019-10-28 09:50:46","","","","AB 1593 CN","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-10-28","1","TOYOTA RUSH");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.281019.000168","2019-10-28 13:49:41","","","","AD 9206 AP","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-10-28","1","CHEVROLET AVEO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.281119.000204","2019-11-28 14:02:52","","","","AB 1138 BJ","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-11-28","1","MAZDA CX-5");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.281119.000205","2019-11-28 16:13:05","","","","AD 2176 BK","","","","admin","10000","0","10000","0","0","0","10000","0","10000","0000-00-00 00:00:00","2019-11-28","1","YAMAHA JUPITER");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.290819.000068","2019-08-29 09:30:40","","","","AD 431 N","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-08-29","1","HYUNDAI H1");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.290819.000069","2019-08-29 14:27:42","","","","AD 9108 KF","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-08-29","1","ZEBRA");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.291119.000206","2019-11-29 13:40:17","","","","AD 8233 UA","","","","admin","0","0","0","600000","0","600000","600000","0","600000","0000-00-00 00:00:00","2019-11-29","0","HONDA CRV");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.300819.000070","2019-08-30 15:33:03","","","","AE 1139 SS","","","","admin","30000","0","30000","0","0","0","30000","0","30000","0000-00-00 00:00:00","2019-08-30","1","MATRIX");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.300919.000124","2019-09-30 10:05:19","","","","AD 8870 L","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-09-30","1","STREAM");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.300919.000125","2019-09-30 15:31:37","","","","AD 8434 JM","","","","admin","0","0","0","400000","0","400000","400000","0","400000","0000-00-00 00:00:00","2019-09-30","1","HYUNDAI I20");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.301019.000169","2019-10-30 09:15:11","","","","AD 8438 MM","","","","admin","40000","0","40000","0","0","0","40000","0","40000","0000-00-00 00:00:00","2019-10-30","1","TOYOTA ALPHARD");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.301019.000170","2019-10-30 09:54:32","","","","AD 1750 ST","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-10-30","1","DAIHATSU GRANDMAX");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.301019.000171","2019-10-30 15:37:22","","","","AD 8577 U","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-10-30","1","HONDA BRIO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.301119.000207","2019-11-30 10:36:54","","","","AD 9206 AP","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-11-30","1","CHEVROLET AVEO");
INSERT INTO t_nonpkb VALUES("NonPKB_BR.310819.000071","2019-08-31 09:34:10","","","","AD 9206 AD","","","","admin","25000","0","25000","0","0","0","25000","0","25000","0000-00-00 00:00:00","2019-08-31","1","CHEVROLET");



DROP TABLE t_nonpkb_cuci_detail;

CREATE TABLE `t_nonpkb_cuci_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_nonpkb` varchar(50) NOT NULL,
  `fk_cuci` varchar(20) NOT NULL,
  `qty_cuci` int(11) NOT NULL,
  `harga_jual_cuci` double DEFAULT NULL,
  `diskon_cuci` float NOT NULL,
  `harga_diskon_cuci` double DEFAULT NULL,
  `harga_total_nonpkb_cuci` double NOT NULL,
  `mark_cuci` enum('0','1') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=latin1;

INSERT INTO t_nonpkb_cuci_detail VALUES("2","NonPKB_BR.020819.000001","101","1","35000","0","0","35000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("3","NonPKB_BR.020819.000001","103","1","15000","0","0","15000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("4","NonPKB_BR.020819.000002","101","1","35000","0","0","35000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("5","NonPKB_BR.020819.000003","101","1","35000","0","0","35000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("6","NonPKB_BR.020819.000004","101","1","35000","0","0","35000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("8","NonPKB_BR.020819.000005","101","1","35000","28.57","9999.5","25000.5","");
INSERT INTO t_nonpkb_cuci_detail VALUES("9","NonPKB_BR.020819.000006","101","1","35000","0","0","35000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("11","NonPKB_BR.050819.000007","101","1","35000","0","0","35000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("12","NonPKB_BR.050819.000008","101","1","35000","0","0","35000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("13","NonPKB_BR.060819.000009","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("15","NonPKB_BR.060819.000010","101","1","35000","0","0","35000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("16","NonPKB_BR.060819.000011","101","1","35000","0","0","35000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("17","NonPKB_BR.060819.000012","101","1","35000","0","0","35000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("18","NonPKB_BR.060819.000013","101","1","35000","20","7000","28000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("19","NonPKB_BR.070819.000015","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("20","NonPKB_BR.070819.000016","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("21","NonPKB_BR.070819.000017","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("22","NonPKB_BR.080819.000018","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("23","NonPKB_BR.090819.000019","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("24","NonPKB_BR.090819.000020","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("25","NonPKB_BR.100819.000021","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("26","NonPKB_BR.100819.000022","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("27","NonPKB_BR.100819.000023","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("28","NonPKB_BR.140819.000025","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("29","NonPKB_BR.140819.000026","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("30","NonPKB_BR.150819.000027","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("31","NonPKB_BR.150819.000028","101","1","30000","15","4500","25500","");
INSERT INTO t_nonpkb_cuci_detail VALUES("32","NonPKB_BR.150819.000029","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("33","NonPKB_BR.150819.000031","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("34","NonPKB_BR.160819.000033","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("35","NonPKB_BR.160819.000034","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("36","NonPKB_BR.190819.000035","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("37","NonPKB_BR.190819.000036","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("38","NonPKB_BR.190819.000037","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("39","NonPKB_BR.190819.000038","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("40","NonPKB_BR.190819.000039","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("42","NonPKB_BR.210819.000041","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("43","NonPKB_BR.210819.000042","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("44","NonPKB_BR.220819.000043","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("45","NonPKB_BR.220819.000044","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("46","NonPKB_BR.220819.000045","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("47","NonPKB_BR.220819.000047","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("48","NonPKB_BR.230819.000048","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("49","NonPKB_BR.230819.000049","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("50","NonPKB_BR.230819.000050","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("51","NonPKB_BR.230819.000051","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("52","NonPKB_BR.240819.000052","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("53","NonPKB_BR.240819.000053","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("54","NonPKB_BR.260819.000055","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("55","NonPKB_BR.260819.000056","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("56","NonPKB_BR.260819.000057","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("57","NonPKB_BR.260819.000060","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("58","NonPKB_BR.260819.000061","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("61","NonPKB_BR.260819.000063","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("62","NonPKB_BR.260819.000062","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("63","NonPKB_BR.270819.000064","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("64","NonPKB_BR.280819.000065","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("65","NonPKB_BR.280819.000066","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("66","NonPKB_BR.280819.000066","103","1","15000","0","0","15000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("67","NonPKB_BR.280819.000067","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("68","NonPKB_BR.290819.000068","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("69","NonPKB_BR.290819.000069","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("70","NonPKB_BR.300819.000070","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("72","NonPKB_BR.310819.000071","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("73","NonPKB_BR.020919.000072","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("74","NonPKB_BR.020919.000073","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("75","NonPKB_BR.020919.000074","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("76","NonPKB_BR.020919.000075","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("77","NonPKB_BR.020919.000076","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("78","NonPKB_BR.030919.000077","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("79","NonPKB_BR.030919.000078","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("80","NonPKB_BR.030919.000079","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("81","NonPKB_BR.040919.000080","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("82","NonPKB_BR.060919.000081","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("83","NonPKB_BR.060919.000082","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("84","NonPKB_BR.070919.000083","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("85","NonPKB_BR.090919.000085","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("86","NonPKB_BR.100919.000086","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("87","NonPKB_BR.100919.000087","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("88","NonPKB_BR.100919.000088","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("89","NonPKB_BR.110919.000089","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("90","NonPKB_BR.110919.000090","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("91","NonPKB_BR.120919.000091","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("92","NonPKB_BR.120919.000092","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("93","NonPKB_BR.120919.000093","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("94","NonPKB_BR.120919.000094","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("95","NonPKB_BR.120919.000095","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("96","NonPKB_BR.120919.000096","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("97","NonPKB_BR.140919.000097","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("98","NonPKB_BR.160919.000098","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("99","NonPKB_BR.160919.000099","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("100","NonPKB_BR.160919.000100","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("101","NonPKB_BR.160919.000101","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("103","NonPKB_BR.160919.000103","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("104","NonPKB_BR.160919.000102","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("105","NonPKB_BR.160919.000104","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("106","NonPKB_BR.170919.000105","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("107","NonPKB_BR.170919.000106","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("108","NonPKB_BR.190919.000107","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("109","NonPKB_BR.190919.000108","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("110","NonPKB_BR.200919.000109","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("111","NonPKB_BR.210919.000110","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("112","NonPKB_BR.210919.000112","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("113","NonPKB_BR.210919.000113","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("114","NonPKB_BR.210919.000114","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("116","NonPKB_BR.210919.000115","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("117","NonPKB_BR.230919.000116","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("118","NonPKB_BR.230919.000117","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("119","NonPKB_BR.230919.000118","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("120","NonPKB_BR.230919.000119","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("121","NonPKB_BR.250919.000120","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("122","NonPKB_BR.250919.000121","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("123","NonPKB_BR.250919.000122","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("124","NonPKB_BR.280919.000123","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("125","NonPKB_BR.300919.000124","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("126","NonPKB_BR.011019.000126","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("127","NonPKB_BR.011019.000127","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("128","NonPKB_BR.011019.000128","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("130","NonPKB_BR.041019.000130","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("132","NonPKB_BR.041019.000131","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("133","NonPKB_BR.051019.000132","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("134","NonPKB_BR.071019.000133","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("135","NonPKB_BR.041019.000129","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("136","NonPKB_BR.071019.000134","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("137","NonPKB_BR.081019.000135","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("138","NonPKB_BR.081019.000136","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("139","NonPKB_BR.081019.000137","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("140","NonPKB_BR.081019.000138","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("141","NonPKB_BR.081019.000139","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("142","NonPKB_BR.091019.000140","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("143","NonPKB_BR.091019.000141","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("144","NonPKB_BR.091019.000142","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("145","NonPKB_BR.091019.000143","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("146","NonPKB_BR.091019.000144","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("147","NonPKB_BR.101019.000146","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("148","NonPKB_BR.111019.000147","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("149","NonPKB_BR.111019.000148","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("150","NonPKB_BR.111019.000149","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("151","NonPKB_BR.111019.000150","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("152","NonPKB_BR.111019.000151","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("153","NonPKB_BR.151019.000155","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("154","NonPKB_BR.151019.000156","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("155","NonPKB_BR.151019.000158","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("156","NonPKB_BR.171019.000160","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("157","NonPKB_BR.171019.000161","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("158","NonPKB_BR.211019.000162","101","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("159","NonPKB_BR.241019.000163","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("160","NonPKB_BR.241019.000165","103","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("161","NonPKB_BR.261019.000166","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("162","NonPKB_BR.281019.000167","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("163","NonPKB_BR.281019.000168","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("164","NonPKB_BR.301019.000169","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("165","NonPKB_BR.301019.000170","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("166","NonPKB_BR.301019.000171","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("167","NonPKB_BR.041119.000172","102","1","45000","0","0","45000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("168","NonPKB_BR.041119.000173","101","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("169","NonPKB_BR.041119.000175","102","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("170","NonPKB_BR.051119.000177","103","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("171","NonPKB_BR.051119.000176","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("172","NonPKB_BR.061119.000178","103","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("173","NonPKB_BR.061119.000179","103","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("174","NonPKB_BR.071119.000180","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("175","NonPKB_BR.071119.000181","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("176","NonPKB_BR.071119.000182","103","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("177","NonPKB_BR.081119.000183","103","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("178","NonPKB_BR.081119.000184","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("179","NonPKB_BR.081119.000185","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("180","NonPKB_BR.081119.000186","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("181","NonPKB_BR.121119.000187","103","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("182","NonPKB_BR.121119.000188","103","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("183","NonPKB_BR.121119.000189","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("184","NonPKB_BR.131119.000190","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("185","NonPKB_BR.131119.000191","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("186","NonPKB_BR.151119.000192","103","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("187","NonPKB_BR.151119.000193","103","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("188","NonPKB_BR.161119.000194","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("189","NonPKB_BR.161119.000195","101","1","40000","0","0","40000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("190","NonPKB_BR.181119.000196","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("191","NonPKB_BR.181119.000197","103","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("192","NonPKB_BR.191119.000198","103","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("193","NonPKB_BR.231119.000199","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("194","NonPKB_BR.251119.000201","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("195","NonPKB_BR.251119.000202","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("196","NonPKB_BR.251119.000203","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("197","NonPKB_BR.281119.000204","103","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("198","NonPKB_BR.281119.000205","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("199","NonPKB_BR.301119.000207","106","1","25000","0","0","25000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("200","NonPKB_BR.021219.000208","104","1","10000","0","0","10000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("201","NonPKB_BR.021219.000209","103","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("202","NonPKB_BR.051219.000210","103","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("203","NonPKB_BR.061219.000211","103","1","30000","0","0","30000","");
INSERT INTO t_nonpkb_cuci_detail VALUES("204","NonPKB_BR.061219.000212","103","1","30000","0","0","30000","");



DROP TABLE t_nonpkb_salon_detail;

CREATE TABLE `t_nonpkb_salon_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_nonpkb` varchar(50) NOT NULL,
  `fk_salon` varchar(50) NOT NULL,
  `qty_salon` int(11) NOT NULL DEFAULT 1,
  `harga_jual_salon` double DEFAULT NULL,
  `diskon_salon` float NOT NULL,
  `harga_diskon_salon` double DEFAULT NULL,
  `harga_total_nonpkb_salon` double NOT NULL,
  `mark_salon` enum('0','1') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

INSERT INTO t_nonpkb_salon_detail VALUES("1","NonPKB_BR.060819.000014","103","1","500000","0","0","500000","");
INSERT INTO t_nonpkb_salon_detail VALUES("4","NonPKB_BR.160819.000032","110","1","1000000","0","0","1000000","");
INSERT INTO t_nonpkb_salon_detail VALUES("5","NonPKB_BR.220819.000046","110","1","300000","0","0","300000","");
INSERT INTO t_nonpkb_salon_detail VALUES("6","NonPKB_BR.240819.000054","113","1","4000000","25","1000000","3000000","");
INSERT INTO t_nonpkb_salon_detail VALUES("7","NonPKB_BR.260819.000058","108","1","500000","0","0","500000","");
INSERT INTO t_nonpkb_salon_detail VALUES("8","NonPKB_BR.260819.000059","107","1","350000","0","0","350000","");
INSERT INTO t_nonpkb_salon_detail VALUES("9","NonPKB_BR.090919.000084","110","1","300000","0","0","300000","");
INSERT INTO t_nonpkb_salon_detail VALUES("10","NonPKB_BR.210919.000111","108","1","500000","0","0","500000","");
INSERT INTO t_nonpkb_salon_detail VALUES("11","NonPKB_BR.300919.000125","108","1","400000","0","0","400000","");
INSERT INTO t_nonpkb_salon_detail VALUES("12","NonPKB_BR.101019.000145","108","1","400000","0","0","400000","");
INSERT INTO t_nonpkb_salon_detail VALUES("15","NonPKB_BR.151019.000154","107","1","350000","0","0","350000","");
INSERT INTO t_nonpkb_salon_detail VALUES("17","NonPKB_BR.171019.000159","108","1","450000","0","0","450000","");
INSERT INTO t_nonpkb_salon_detail VALUES("18","NonPKB_BR.151019.000152","111","1","2000000","0","0","2000000","");
INSERT INTO t_nonpkb_salon_detail VALUES("19","NonPKB_BR.151019.000153","108","1","600000","0","0","600000","");
INSERT INTO t_nonpkb_salon_detail VALUES("20","NonPKB_BR.241019.000164","108","1","450000","0","0","450000","");
INSERT INTO t_nonpkb_salon_detail VALUES("21","NonPKB_BR.151019.000157","104","1","200000","0","0","200000","");
INSERT INTO t_nonpkb_salon_detail VALUES("22","NonPKB_BR.041119.000174","110","1","300000","0","0","300000","");
INSERT INTO t_nonpkb_salon_detail VALUES("23","NonPKB_BR.231119.000200","107","1","300000","0","0","300000","");
INSERT INTO t_nonpkb_salon_detail VALUES("24","NonPKB_BR.291119.000206","108","1","600000","0","0","600000","");



DROP TABLE t_paket_jasa;

CREATE TABLE `t_paket_jasa` (
  `id_paket_jasa` varchar(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `total_harga` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE t_paket_jasa_detail;

CREATE TABLE `t_paket_jasa_detail` (
  `fk_paket_jasa` varchar(20) NOT NULL,
  `fk_jasa` varchar(20) NOT NULL,
  `harga` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE t_panel;

CREATE TABLE `t_panel` (
  `id_panel` varchar(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `harga_pokok` double NOT NULL,
  `harga_jual` double NOT NULL,
  `diskon` float NOT NULL,
  `ppn` float NOT NULL,
  PRIMARY KEY (`id_panel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_panel VALUES("101","BUMPER FR","0","350000","0","10");
INSERT INTO t_panel VALUES("1010","Chasis total","2070000","2300000","0","10");
INSERT INTO t_panel VALUES("1011","FENDER FR RH","0","410000","0","10");
INSERT INTO t_panel VALUES("1012","Grille ( warna body )","0","104545.45","0","10");
INSERT INTO t_panel VALUES("1013","TIANG KACA FR RH","0","227272.7272","0","10");
INSERT INTO t_panel VALUES("1014","Panel belakang mesin","495000","550000","0","10");
INSERT INTO t_panel VALUES("1015","Panel bawah kaca depan","405000","450000","0","10");
INSERT INTO t_panel VALUES("1016","PINTU RR RH","0","363636.36","0","10");
INSERT INTO t_panel VALUES("1017","TIANG PINTU/PILLAR FR LH","0","363636.3636","0","10");
INSERT INTO t_panel VALUES("1018","Pintu belakang","585000","650000","0","10");
INSERT INTO t_panel VALUES("1019","Caben atas /Roof","810000","900000","0","10");
INSERT INTO t_panel VALUES("102","EXT.BUMPER RR RH","0","159090.909","0","10");
INSERT INTO t_panel VALUES("1020","Afron depan RH","495000","550000","0","10");
INSERT INTO t_panel VALUES("1021","Afron belakang","495000","550000","0","10");
INSERT INTO t_panel VALUES("1022","TRIPLANG RH","0","295000","0","10");
INSERT INTO t_panel VALUES("1023","QUARTER RH","0","363636.36","0","10");
INSERT INTO t_panel VALUES("1024","Spakboard ( no pintu )","630000","700000","0","10");
INSERT INTO t_panel VALUES("1025","KAP BAGASI","0","1000000","0","10");
INSERT INTO t_panel VALUES("1026","PANEL BAGASI","0","365000","0","10");
INSERT INTO t_panel VALUES("1027","Panel belakang","450000","500000","0","10");
INSERT INTO t_panel VALUES("1028","Panel lampu depan","495000","550000","0","10");
INSERT INTO t_panel VALUES("1029","Panel lampu stop","270000","300000","0","10");
INSERT INTO t_panel VALUES("103","Panel atas / bawah bumper","247500","275000","0","10");
INSERT INTO t_panel VALUES("1030","LANTAI BAGASI","0","365000","0","10");
INSERT INTO t_panel VALUES("1031","Tiang kaca belakang","450000","500000","0","10");
INSERT INTO t_panel VALUES("1032","Lantai depan","450000","500000","0","10");
INSERT INTO t_panel VALUES("1033","Lantai belakang","495000","550000","0","10");
INSERT INTO t_panel VALUES("1034","Lantai tengah","495000","550000","0","10");
INSERT INTO t_panel VALUES("1035","SPIO RHASSY","0","136363.63","10","10");
INSERT INTO t_panel VALUES("1036","Panel bawah kaca belakang","360000","400000","0","10");
INSERT INTO t_panel VALUES("1037","SPOILER TRIPLANG RH","0","272727.2727","10","10");
INSERT INTO t_panel VALUES("1038","Panel belakang kap mesin","337500","375000","0","10");
INSERT INTO t_panel VALUES("1039","Hatchback","585000","650000","0","10");
INSERT INTO t_panel VALUES("104","Dudukan radiator / buffle","292500","325000","0","10");
INSERT INTO t_panel VALUES("1040","Tutup ban / wheeldop","270000","300000","0","10");
INSERT INTO t_panel VALUES("1041","LIST PINTU RR LH","0","136363.6363","0","10");
INSERT INTO t_panel VALUES("1042","Bodymould per panel ","135000","150000","0","10");
INSERT INTO t_panel VALUES("1043","Ac","495000","550000","0","10");
INSERT INTO t_panel VALUES("1044","VELG RR RH","0","227272.72","0","10");
INSERT INTO t_panel VALUES("1045","HANDLE PINTU FR RH","0","90909.0909","0","10");
INSERT INTO t_panel VALUES("1046","Body dalam pintu","585000","650000","0","10");
INSERT INTO t_panel VALUES("1047","B/P Kaca fr","0","650000","0","10");
INSERT INTO t_panel VALUES("1048","Sealent","157500","175000","0","10");
INSERT INTO t_panel VALUES("1049","Kaca film standart","225000","250000","0","10");
INSERT INTO t_panel VALUES("105","Panel atas radiator","225000","250000","0","10");
INSERT INTO t_panel VALUES("1050","B/P VELG + BAN RR RH","0","90909.0909","10","10");
INSERT INTO t_panel VALUES("1051","muadguard","90000","100000","0","10");
INSERT INTO t_panel VALUES("1052","ENGSEL KAP MESIN RH","0","90909.09","0","10");
INSERT INTO t_panel VALUES("1053","Panel radiator lh","270000","300000","0","10");
INSERT INTO t_panel VALUES("1054","Panel radiator rh","270000","300000","0","10");
INSERT INTO t_panel VALUES("1055","Panel radiator bawah","270000","300000","0","10");
INSERT INTO t_panel VALUES("1056","Chasis lh","540000","600000","0","10");
INSERT INTO t_panel VALUES("1057","Chasis rh","540000","600000","0","10");
INSERT INTO t_panel VALUES("1058","B/P Radiator","180000","200000","0","10");
INSERT INTO t_panel VALUES("1059","Condensor Assy","0","90909.09","0","10");
INSERT INTO t_panel VALUES("106","KAP MESIN","0","455000","0","10");
INSERT INTO t_panel VALUES("1060","Isi freon","0","300000","0","10");
INSERT INTO t_panel VALUES("1061","Engsel pintu ","135000","150000","0","10");
INSERT INTO t_panel VALUES("1062","Poles/wax body","108000","120000","0","10");
INSERT INTO t_panel VALUES("1063","Dudukan fender fr ","135000","150000","0","10");
INSERT INTO t_panel VALUES("1064","G/C Shockbreacker","270000","300000","0","10");
INSERT INTO t_panel VALUES("1065","Tanduk bumper fr","315000","350000","0","10");
INSERT INTO t_panel VALUES("1066","Cover ban serep","360000","400000","0","10");
INSERT INTO t_panel VALUES("1067","SIDEROOF RH","0","454545.4545","0","10");
INSERT INTO t_panel VALUES("1068","Spooring","247500","275000","0","10");
INSERT INTO t_panel VALUES("1069","Balancing per ban","45000","50000","0","10");
INSERT INTO t_panel VALUES("107","Thothok depan","562500","625000","0","10");
INSERT INTO t_panel VALUES("1070","B/P Kaca Pintu","135000","150000","0","10");
INSERT INTO t_panel VALUES("1071","FENDER FR LH","0","410000","0","10");
INSERT INTO t_panel VALUES("1072","Afron depan LH","495000","550000","0","10");
INSERT INTO t_panel VALUES("1073","PINTU FR RH","0","425000","10","10");
INSERT INTO t_panel VALUES("1074","TRIPLANG LH","0","295000","10","10");
INSERT INTO t_panel VALUES("1075","BUMPER RR","0","350000","0","10");
INSERT INTO t_panel VALUES("1076","PINTU RR LH","0","425000","0","10");
INSERT INTO t_panel VALUES("1077","PINTU RR RH","0","425000","0","10");
INSERT INTO t_panel VALUES("1078","SPOILER BUMPER RR","0","700000","0","10");
INSERT INTO t_panel VALUES("1079","BUMPER RR BAWAH","0","650000","0","10");
INSERT INTO t_panel VALUES("108","Panel kecil / pipi","135000","150000","0","10");
INSERT INTO t_panel VALUES("1080","PINTU BAGASI","0","750000","0","10");
INSERT INTO t_panel VALUES("1081","MOULDING BUMPER FR","0","150000","0","10");
INSERT INTO t_panel VALUES("1082","QUARTER LH","0","425000","0","10");
INSERT INTO t_panel VALUES("1083","MUDGUARD RR RH","0","90909.0909","0","10");
INSERT INTO t_panel VALUES("1084","MUDGUARD RR LH","0","90909.0909","0","10");
INSERT INTO t_panel VALUES("1085","VELG RR LH","0","227272.7272","10","10");
INSERT INTO t_panel VALUES("1086","VELG FR RH","0","227272.7272","0","10");
INSERT INTO t_panel VALUES("1087","VELG FR LH","0","227272.7272","0","10");
INSERT INTO t_panel VALUES("1088","LIST PINTU RR RH","0","97000","0","10");
INSERT INTO t_panel VALUES("1089","LIST PINTU FR LH","0","136363.6363","0","10");
INSERT INTO t_panel VALUES("109","Crosmember","0","318181.81","0","10");
INSERT INTO t_panel VALUES("1090","LIST PINTU FR RH","0","97000","0","10");
INSERT INTO t_panel VALUES("1091","COVER HEADLAMP","0","90909.0909","0","10");
INSERT INTO t_panel VALUES("1092","COVER FOGLAMP LH","0","100000","0","10");
INSERT INTO t_panel VALUES("1093","PINTU FR LH","0","425000","0","10");
INSERT INTO t_panel VALUES("1094","RADIATOR ASSY","0","90909.09","0","10");
INSERT INTO t_panel VALUES("1095","AIRBAG SET DAN RESET","0","1136363.63","0","10");
INSERT INTO t_panel VALUES("1096","ENGSEL KAP MESIN LH","0","90909.09","0","10");
INSERT INTO t_panel VALUES("1097","BULLHEAD ASSY","0","227272.72","0","10");
INSERT INTO t_panel VALUES("1098","LOCK KAP MESIN ASSY","0","90909.09","0","10");
INSERT INTO t_panel VALUES("1099","SPION RH","0","136363.6363","0","10");
INSERT INTO t_panel VALUES("1100","HANDLE PINTU RR RH","0","90909.0909","0","10");
INSERT INTO t_panel VALUES("1101","","0","159090.909","0","10");
INSERT INTO t_panel VALUES("1102","PANEL BAWAH STOPLAMP RH","0","136363.6363","10","10");
INSERT INTO t_panel VALUES("1103","COVER SLIDE QUARTER RH","0","159090.909","0","10");
INSERT INTO t_panel VALUES("1104","B/P CONDENSOR","0","181818.1818","10","10");
INSERT INTO t_panel VALUES("1105","TIANBG LOCK KAP MESIN","0","136363.6363","10","10");
INSERT INTO t_panel VALUES("1106","DDK BUMPER FR LH","0","136363.6363","10","10");
INSERT INTO t_panel VALUES("1107","DDK HEADLAMP LH","0","136363.6363","10","10");
INSERT INTO t_panel VALUES("1108","TIANG LOCK KAP MESIN","0","136363.6363","10","10");
INSERT INTO t_panel VALUES("1109","SPOILER BUMPER FR","0","272727.2727","10","10");
INSERT INTO t_panel VALUES("1110","TIANG KACA FR LH","0","227272.7272","10","10");
INSERT INTO t_panel VALUES("1111","MOULDING FENDER FR RH","0","181818.1818","10","10");
INSERT INTO t_panel VALUES("1112","SPION LH","0","136363.6363","0","10");
INSERT INTO t_panel VALUES("1113","BALEG","0","363636.3636","0","10");
INSERT INTO t_panel VALUES("1114","MOULDING QUARTER RH","0","363636.3636","0","10");
INSERT INTO t_panel VALUES("1115","MOULDING QUARTER LH","0","363636.3636","0","10");
INSERT INTO t_panel VALUES("1116","SPOILER BAGASI","0","300000","0","10");
INSERT INTO t_panel VALUES("1117","POLES HEADLAMP LH","0","22727.2727","10","10");
INSERT INTO t_panel VALUES("1118","COVER TRIPLANG LH","0","289000","0","10");
INSERT INTO t_panel VALUES("1119","COVER TRIPLANG RH","0","289000","0","10");
INSERT INTO t_panel VALUES("1120","LIST FENDER FR LH","0","136363.6363","0","10");
INSERT INTO t_panel VALUES("1121","SPOILER TRIPLANG LH","0","272727.2727","0","10");
INSERT INTO t_panel VALUES("1122","PINTU TENGAH LH","0","636363.6363","10","10");
INSERT INTO t_panel VALUES("1123","PANEL HEADLAMP RH","0","159090.909","10","10");
INSERT INTO t_panel VALUES("1124","PANEL HEADLAMP LH","0","159090.909","10","10");
INSERT INTO t_panel VALUES("1125","BODY LONG RH","0","681818.1818","10","10");
INSERT INTO t_panel VALUES("1126","GRILL","0","90000","0","10");
INSERT INTO t_panel VALUES("1127","B/P VELG + BAN FR RH","0","100000","10","10");
INSERT INTO t_panel VALUES("1128","PANEL MESIN","0","136363.6363","0","10");
INSERT INTO t_panel VALUES("1129","MOULDING PINTU RR LH","0","272727.2727","10","10");
INSERT INTO t_panel VALUES("1130","EXT.BUMPER RR LH","0","104545.4545","0","10");
INSERT INTO t_panel VALUES("1131","BODY LONG LH","0","1363636.3636","0","10");
INSERT INTO t_panel VALUES("1132","SIDE ROOF LH","0","454545.4545","0","10");
INSERT INTO t_panel VALUES("1133","PANEL BAUT","0","90909.0909","0","10");



DROP TABLE t_part;

CREATE TABLE `t_part` (
  `id_part` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `fk_satuan` varchar(50) NOT NULL,
  `harga_beli` double NOT NULL,
  `harga_jual` double NOT NULL,
  `diskon` float NOT NULL,
  `ppn` float NOT NULL,
  `stock` int(11) NOT NULL,
  `fk_supplier` varchar(50) NOT NULL,
  `tgl_masuk` datetime NOT NULL,
  PRIMARY KEY (`id_part`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_part VALUES("16360-BZ300","SHROUDFAN RADIATOR","PCS","0","700000","0","10","1","DAIHATSU","2019-11-04 14:36:31");
INSERT INTO t_part VALUES("16400-BZ760","RADIATOR","PCS","0","600000","0","10","1","DAIHATSU","2019-11-04 14:35:38");
INSERT INTO t_part VALUES("17751-BZ110","COVER / SELOBONG ATAS MESIN","PCS","0","120000","0","10","1","DAIHATSU","2019-11-04 14:34:44");
INSERT INTO t_part VALUES("26540-1YR0A","REFLEKTOR BAGASI RH","PCS","0","424589","0","10","1","NS","2019-11-21 08:46:38");
INSERT INTO t_part VALUES("33956-T62-K01","COVER FOGLAMP LH","PCS","0","315810","5","10","1","HONDA","2019-10-15 08:50:55");
INSERT INTO t_part VALUES("52115-BZ180","BRACKET BUMPER FR RH","PCS","0","45000","0","10","1","DAIHATSU","2019-11-04 14:33:40");
INSERT INTO t_part VALUES("52116-0K090","BRACKET BUMPER FR LH","PCS","0","48400","0","10","1","NASMOCO SOBA","2019-09-20 13:56:45");
INSERT INTO t_part VALUES("52900-C7000YG1","BAN ACHILLES 195/55 R16 87 H 122","PCS","0","838181.8181","5","10","1","HYU","2019-09-23 09:18:23");
INSERT INTO t_part VALUES("53294-0K120","COVER PLASTIK RADIATOR LH","PCS","0","286000","0","10","1","NASMOCO SOBA","2019-09-20 13:55:50");
INSERT INTO t_part VALUES("53301-BZ320","KAP MESIN","PCS","0","1200000","0","10","1","DAIHATSU","2019-11-04 14:37:32");
INSERT INTO t_part VALUES("56111-BZ180","KACA FR","PCS","0","935000","5","10","1","DAIHATSU","2019-09-23 11:32:18");
INSERT INTO t_part VALUES("56111-BZ330","KACA FR","PCS","0","1089000","0","10","1","NASMOCO SOBA","2019-09-13 08:53:28");
INSERT INTO t_part VALUES("56117-BZ100","DAMKIT","PCS","0","70400","5","10","1","DAIHATSU","2019-09-23 11:34:00");
INSERT INTO t_part VALUES("71101-T61-T00ZZ","BUMPER FR","PCS","0","2526480","5","10","1","HONDA","2019-10-15 08:51:51");
INSERT INTO t_part VALUES("71101-TE7-K00ZZ","BUMPER FR","PCS","0","999000","5","10","1","","2019-09-12 09:12:21");
INSERT INTO t_part VALUES("73101-TG4-U01","KACA FR","PCS","0","844580","5","10","1","HONDA","2019-10-30 08:58:10");
INSERT INTO t_part VALUES("73125-SYY-000","DAMKIT 1","PCS","0","73810","5","10","1","HONDA","2019-10-30 08:59:02");
INSERT INTO t_part VALUES("73125-TG1-T00","DAMKIT 2","PCS","0","49610","5","10","1","HONDA","2019-10-30 08:59:38");
INSERT INTO t_part VALUES("73126-TF0-003","DAMKIT 3","PCS","0","67760","5","10","1","HONDA","2019-10-30 09:00:25");
INSERT INTO t_part VALUES("74115-TG4-U00","COVER ENGINE RH","PCS","0","71000","5","10","1","HONDA","2019-09-12 09:15:47");
INSERT INTO t_part VALUES("74165-TG4-U00","COVER ENGINE LH","PCS","0","71000","5","10","1","HONDA","2019-09-12 09:16:35");
INSERT INTO t_part VALUES("75311-0K230","EMBLEM GRILL TOYOTA","PCS","0","187000","0","10","1","NASMOCO SOBA","2019-09-20 13:53:52");
INSERT INTO t_part VALUES("75533-BZ060","KARET KACA FR","PCS","0","68200","5","10","1","DAIHATSU","2019-09-23 11:33:17");
INSERT INTO t_part VALUES("75533-BZ100","LIST KARET KACA FR","PCS","0","101640","0","10","1","NASMOCO SOBA","2019-09-13 08:55:29");
INSERT INTO t_part VALUES("76803-BZ030","REFLEKTOR BAGASI RH","PCS","0","278300","0","10","1","","2019-10-16 11:19:02");
INSERT INTO t_part VALUES("76804-BZ010","REFLEKTOR BAGASI LH","PCS","0","253000","5","10","1","NASMOCO SOBA","2019-10-23 10:58:34");
INSERT INTO t_part VALUES("81130-BZ310","HEADLAMP RH","PCS","0","535000","0","10","1","DAIHATSU","2019-11-04 14:32:36");
INSERT INTO t_part VALUES("81150-BZ390","HEAD LAMP LH","PCS","0","1270500","0","10","1","","2019-09-27 15:05:38");
INSERT INTO t_part VALUES("81551-BZ100","STOPLAMP RH","PCS","650000","786500","5","10","1","DAIHATSU","2019-09-18 14:31:42");
INSERT INTO t_part VALUES("81560-BZ340","STOPLAMP LH","PCS","0","629200","0","10","1","NASMOCO SOBA","2019-11-29 14:06:13");
INSERT INTO t_part VALUES("81561-BZ270","STOPLAMP KIRI","PCS","0","385000","0","10","1","DAIHATSU","2019-11-04 14:31:36");
INSERT INTO t_part VALUES("81920-BZ090","REFLEKTOR BUMPER RR LH","PCS","0","369050","0","10","1","NASMOCO SOBA","2019-11-29 14:06:50");
INSERT INTO t_part VALUES("87910-BZ310","SPION RH","PCS","140000","169400","5","10","1","DAIHATSU","2019-09-18 14:25:35");
INSERT INTO t_part VALUES("9062036686 TT","BAN DUNLOP ENASAVE EC 300 185/60 R16 86 H","PCS","0","1839970","0","10","1","MAZDA","2019-10-25 09:54:28");
INSERT INTO t_part VALUES("91568-TF0-003","FASTENER","PCS","0","183920","5","10","1","HONDA","2019-10-30 09:01:01");
INSERT INTO t_part VALUES("92402-2W035","STOPLAMP LH","PCS","0","1992727.2727","5","10","1","HYU","2019-09-23 10:51:40");
INSERT INTO t_part VALUES("96301-1HH4B","SPIONASSY","PCS","0","666710","5","10","1","","2019-09-17 13:52:47");
INSERT INTO t_part VALUES("9965625560","VELG FR RH","PCS","0","7566680","5","10","1","MAZDA","2019-09-11 14:15:38");
INSERT INTO t_part VALUES("9965625560 SS","VELG FR RH","PCS","0","7566680","0","10","1","MAZDA","2019-10-25 09:51:28");
INSERT INTO t_part VALUES("B45A56146A","KLIP/FASTENER","PCS","0","20058","5","10","1","MAZDA","2019-09-11 14:16:53");
INSERT INTO t_part VALUES("DA6K51031F","HEADLAMP RH","PCS","0","13488970","5","10","1","MAZDA","2019-09-11 14:14:12");
INSERT INTO t_part VALUES("DG8L50031 BB","BUMPER FR","PCS","0","4092440","0","10","1","MAZDA","2019-10-25 09:52:15");
INSERT INTO t_part VALUES("DGM022-33020-002","COVER SPION RH","PCS","600000","726000","5","10","1","DAIHATSU","2019-09-18 14:29:41");
INSERT INTO t_part VALUES("KACA FILM","KACA FILM HUPER OPTIK","PCS","0","772727.2727","5","10","1","HONDA","2019-09-13 08:57:49");
INSERT INTO t_part VALUES("KC FILM","KACA FILM STANDART","PCS","0","318181.8181","5","10","1","DAIHATSU","2019-09-23 11:35:45");
INSERT INTO t_part VALUES("KCFILM","KACA FILM STANDART","PCS","0","400000","0","10","1","NASMOCO SOBA","2019-09-24 09:09:06");
INSERT INTO t_part VALUES("MB283675","LAMPU SEIGN HEADLAMP LH","","0","856377.5","5","10","1","MITSUBISHI JEBRES","2019-09-13 10:51:48");
INSERT INTO t_part VALUES("SB","SEALER BODY","PCS","0","136363.6363","0","10","1","DAIHATSU","2019-11-21 11:45:55");
INSERT INTO t_part VALUES("SEALER","SEALER KACA 2 BUAH","PCS","0","159090.909","5","10","2","HONDA","2019-10-30 10:14:29");
INSERT INTO t_part VALUES("SJOMC-AV015","SEIGN SPION LH","PCS","0","1053800","5","10","1","NASMOCO SOBA","2019-10-23 11:00:27");
INSERT INTO t_part VALUES("SJRBL-AV019","REFLEKTOR BUMPER RR LH","PCS","0","972400","5","10","1","NASMOCO SOBA","2019-10-23 10:59:41");
INSERT INTO t_part VALUES("XX","BASE EMBLEM","PCS","0","30800","0","10","1","NASMOCO SOBA","2019-09-20 13:54:35");



DROP TABLE t_partner_bank;

CREATE TABLE `t_partner_bank` (
  `id_partner_bank` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  PRIMARY KEY (`id_partner_bank`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_partner_bank VALUES("asdasd","00","123","01");



DROP TABLE t_paycuci;

CREATE TABLE `t_paycuci` (
  `no_bukti` varchar(20) NOT NULL,
  `tgl_transaksi` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tipe_transaksi` varchar(20) NOT NULL,
  `diterima_dari` text NOT NULL,
  `via_bayar` enum('Cash','Transfer','Debit Card','Credit Card','') DEFAULT NULL,
  `fk_partner_bank` varchar(20) NOT NULL,
  `no_ref` varchar(40) NOT NULL,
  `total` double NOT NULL,
  `keterangan` text NOT NULL,
  `tgl_batal` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `keterangan_batal` text NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`no_bukti`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_paycuci VALUES("BM_BR.011019.000128","2019-10-01 00:00:00","","PAK BUDI","Cash","","NonPKB_BR.011019.000126","25000","CUCI","0000-00-00 00:00:00","","2019-10-01 11:21:37");
INSERT INTO t_paycuci VALUES("BM_BR.011019.000129","2019-10-01 00:00:00","","PAK TORO","Cash","","NonPKB_BR.011019.000127","25000","CUCI","0000-00-00 00:00:00","","2019-10-01 15:01:40");
INSERT INTO t_paycuci VALUES("BM_BR.011019.000130","2019-10-01 00:00:00","","CUSTOMER","Cash","","NonPKB_BR.011019.000128","30000","CUCI","0000-00-00 00:00:00","","2019-10-01 15:41:05");
INSERT INTO t_paycuci VALUES("BM_BR.020819.000002","2019-08-02 00:00:00","","PAK HARYO","Cash","","NonPKB_BR.020819.000001","50000","","0000-00-00 00:00:00","","2019-08-02 14:37:05");
INSERT INTO t_paycuci VALUES("BM_BR.020819.000003","2019-08-02 00:00:00","","PAK BUDI","Cash","","NonPKB_BR.020819.000002","35000","","0000-00-00 00:00:00","","2019-08-02 14:47:24");
INSERT INTO t_paycuci VALUES("BM_BR.020819.000004","2019-08-02 00:00:00","","PAK HARYO","Cash","","NonPKB_BR.020819.000003","35000","","0000-00-00 00:00:00","","2019-08-02 14:49:10");
INSERT INTO t_paycuci VALUES("BM_BR.020819.000005","2019-08-02 00:00:00","","PAK EDWIN","Cash","","NonPKB_BR.020819.000004","35000","","0000-00-00 00:00:00","","2019-08-02 15:23:18");
INSERT INTO t_paycuci VALUES("BM_BR.020819.000006","2019-08-02 00:00:00","","PAK ANDREAS","Cash","","","0","","2019-08-02 15:34:26","","2019-08-02 15:34:09");
INSERT INTO t_paycuci VALUES("BM_BR.020819.000007","2019-08-02 00:00:00","","PAK ANDREAS","Cash","","NonPKB_BR.020819.000005","25000.5","","0000-00-00 00:00:00","","2019-08-02 15:35:13");
INSERT INTO t_paycuci VALUES("BM_BR.020819.000008","2019-08-02 00:00:00","","IVENTARIS","Cash","","NonPKB_BR.020819.000006","35000","","0000-00-00 00:00:00","","2019-08-02 15:43:40");
INSERT INTO t_paycuci VALUES("BM_BR.020919.000075","2019-09-02 00:00:00","","PAK HARYO","Cash","","NonPKB_BR.020919.000072","40000","","0000-00-00 00:00:00","","2019-09-02 12:56:27");
INSERT INTO t_paycuci VALUES("BM_BR.020919.000076","2019-09-02 00:00:00","","","Cash","","NonPKB_BR.020919.000073","10000","","0000-00-00 00:00:00","","2019-09-02 15:02:15");
INSERT INTO t_paycuci VALUES("BM_BR.020919.000077","2019-09-02 00:00:00","","PAK IMAM","Cash","","NonPKB_BR.020919.000074","10000","","0000-00-00 00:00:00","","2019-09-02 15:41:26");
INSERT INTO t_paycuci VALUES("BM_BR.020919.000078","2019-09-02 00:00:00","","PAK NUG","Cash","","NonPKB_BR.020919.000075","10000","","0000-00-00 00:00:00","","2019-09-02 15:43:07");
INSERT INTO t_paycuci VALUES("BM_BR.020919.000079","2019-09-02 00:00:00","","PAK TORO","Cash","","NonPKB_BR.020919.000076","25000","","0000-00-00 00:00:00","","2019-09-02 15:47:51");
INSERT INTO t_paycuci VALUES("BM_BR.021219.000209","2019-12-02 00:00:00","","HENDARU","Cash","","NonPKB_BR.021219.000208","10000","CUCI MOTOR","0000-00-00 00:00:00","","2019-12-02 11:53:42");
INSERT INTO t_paycuci VALUES("BM_BR.021219.000210","2019-12-02 00:00:00","","MICHAEL","Cash","","NonPKB_BR.021219.000209","30000","CUCI","0000-00-00 00:00:00","","2019-12-02 17:51:12");
INSERT INTO t_paycuci VALUES("BM_BR.030919.000080","2019-09-03 00:00:00","","BU KRISTIN","Cash","","NonPKB_BR.030919.000077","25000","","0000-00-00 00:00:00","","2019-09-03 10:47:55");
INSERT INTO t_paycuci VALUES("BM_BR.030919.000081","2019-09-03 00:00:00","","PAK MAN","Cash","","NonPKB_BR.030919.000078","10000","","0000-00-00 00:00:00","","2019-09-03 13:54:03");
INSERT INTO t_paycuci VALUES("BM_BR.030919.000082","2019-09-03 00:00:00","","","Cash","","NonPKB_BR.030919.000079","30000","","0000-00-00 00:00:00","","2019-09-03 15:14:56");
INSERT INTO t_paycuci VALUES("BM_BR.040919.000083","2019-09-04 00:00:00","","CUSTOMER","Cash","","NonPKB_BR.040919.000080","30000","","0000-00-00 00:00:00","","2019-09-04 15:30:14");
INSERT INTO t_paycuci VALUES("BM_BR.041019.000131","2019-10-04 00:00:00","","PAK RANU","Cash","","NonPKB_BR.041019.000130","25000","CUCI","0000-00-00 00:00:00","","2019-10-04 13:30:39");
INSERT INTO t_paycuci VALUES("BM_BR.041019.000132","2019-10-04 00:00:00","","PAK ERIK","Cash","","NonPKB_BR.041019.000131","25000","CUCI","0000-00-00 00:00:00","","2019-10-04 15:44:00");
INSERT INTO t_paycuci VALUES("BM_BR.041119.000174","2019-11-04 00:00:00","","THOMAS","Cash","","NonPKB_BR.041119.000173","40000","CUCI","0000-00-00 00:00:00","","2019-11-04 13:31:30");
INSERT INTO t_paycuci VALUES("BM_BR.050819.000009","2019-08-05 00:00:00","","THE PARK","Cash","","NonPKB_BR.050819.000007","35000","","0000-00-00 00:00:00","","2019-08-05 14:16:15");
INSERT INTO t_paycuci VALUES("BM_BR.050819.000010","2019-08-05 00:00:00","","PAK ERIK","Cash","","NonPKB_BR.050819.000008","35000","","0000-00-00 00:00:00","","2019-08-05 14:57:32");
INSERT INTO t_paycuci VALUES("BM_BR.051019.000133","2019-10-05 00:00:00","","PAK HARYO","Cash","","NonPKB_BR.051019.000132","30000","CUCI","0000-00-00 00:00:00","","2019-10-05 09:36:06");
INSERT INTO t_paycuci VALUES("BM_BR.051119.000175","2019-11-05 00:00:00","","ARIF","Cash","","NonPKB_BR.051119.000177","30000","CUCI","0000-00-00 00:00:00","","2019-11-05 12:25:12");
INSERT INTO t_paycuci VALUES("BM_BR.051119.000176","2019-11-05 00:00:00","","MUTIA","Cash","","NonPKB_BR.041119.000172","45000","CUCI","0000-00-00 00:00:00","","2019-11-05 15:30:17");
INSERT INTO t_paycuci VALUES("BM_BR.060819.000011","2019-08-06 00:00:00","","PAK HARYO","Cash","","NonPKB_BR.060819.000009","40000","","0000-00-00 00:00:00","","2019-08-06 09:28:57");
INSERT INTO t_paycuci VALUES("BM_BR.060819.000012","2019-08-06 00:00:00","","PAK HARYO","Cash","","NonPKB_BR.060819.000010","35000","","0000-00-00 00:00:00","","2019-08-06 09:32:36");
INSERT INTO t_paycuci VALUES("BM_BR.060819.000013","2019-08-06 00:00:00","","PAK TORO","Cash","","NonPKB_BR.060819.000011","35000","","0000-00-00 00:00:00","","2019-08-06 10:01:29");
INSERT INTO t_paycuci VALUES("BM_BR.060819.000014","2019-08-06 00:00:00","","PAK ZAEN","Cash","","NonPKB_BR.060819.000012","35000","","0000-00-00 00:00:00","","2019-08-06 10:07:32");
INSERT INTO t_paycuci VALUES("BM_BR.060819.000015","2019-08-06 00:00:00","","PAK DUKA","Cash","","NonPKB_BR.060819.000013","28000","","0000-00-00 00:00:00","","2019-08-06 10:12:41");
INSERT INTO t_paycuci VALUES("BM_BR.060919.000084","2019-09-06 00:00:00","","PAK RONY","Cash","","NonPKB_BR.060919.000082","25000","","0000-00-00 00:00:00","","2019-09-06 10:47:36");
INSERT INTO t_paycuci VALUES("BM_BR.061119.000177","2019-11-06 00:00:00","","Martina Stefanie Sampurno","Cash","","NonPKB_BR.051119.000176","10000","CUCI MOTOR","0000-00-00 00:00:00","","2019-11-06 13:07:18");
INSERT INTO t_paycuci VALUES("BM_BR.061119.000178","2019-11-06 00:00:00","","AGUS","Cash","","NonPKB_BR.061119.000178","30000","CUCI","0000-00-00 00:00:00","","2019-11-06 14:05:55");
INSERT INTO t_paycuci VALUES("BM_BR.061119.000179","2019-11-06 00:00:00","","THOMAS","Transfer","","NonPKB_BR.061119.000179","30000","CUCI","0000-00-00 00:00:00","","2019-11-06 14:21:16");
INSERT INTO t_paycuci VALUES("BM_BR.061219.000211","2019-12-06 00:00:00","","BUDI SUTRISNO","Cash","","NonPKB_BR.051219.000210","30000","CUCI","0000-00-00 00:00:00","","2019-12-06 09:34:28");
INSERT INTO t_paycuci VALUES("BM_BR.061219.000212","2019-12-06 00:00:00","","ANGELIA","Cash","","NonPKB_BR.061219.000212","30000","CUCI","0000-00-00 00:00:00","","2019-12-06 10:21:58");
INSERT INTO t_paycuci VALUES("BM_BR.070819.000016","2019-08-07 00:00:00","","MAS ENDRI","Cash","","NonPKB_BR.070819.000015","10000","","0000-00-00 00:00:00","","2019-08-07 13:28:40");
INSERT INTO t_paycuci VALUES("BM_BR.070819.000017","2019-08-07 00:00:00","","THE PARK","Cash","","NonPKB_BR.070819.000016","10000","","0000-00-00 00:00:00","","2019-08-07 13:31:20");
INSERT INTO t_paycuci VALUES("BM_BR.070819.000018","2019-08-07 00:00:00","","PAK NUG","Cash","","NonPKB_BR.070819.000017","30000","","0000-00-00 00:00:00","","2019-08-07 14:02:56");
INSERT INTO t_paycuci VALUES("BM_BR.070919.000085","2019-09-07 00:00:00","","PAK HARYO","Cash","","NonPKB_BR.060919.000081","30000","","0000-00-00 00:00:00","","2019-09-07 08:11:46");
INSERT INTO t_paycuci VALUES("BM_BR.070919.000086","2019-09-07 00:00:00","","PAK BUDI","Cash","","NonPKB_BR.070919.000083","40000","","0000-00-00 00:00:00","","2019-09-07 12:55:33");
INSERT INTO t_paycuci VALUES("BM_BR.071019.000134","2019-10-07 00:00:00","","PAK NUG","Cash","","NonPKB_BR.041019.000129","25000","CUCI","0000-00-00 00:00:00","","2019-10-07 10:03:13");
INSERT INTO t_paycuci VALUES("BM_BR.071019.000135","2019-10-07 00:00:00","","BU IKA","Cash","","NonPKB_BR.071019.000133","25000","CUCI","0000-00-00 00:00:00","","2019-10-07 13:12:32");
INSERT INTO t_paycuci VALUES("BM_BR.071019.000136","2019-10-07 00:00:00","","PAK HARYO","Cash","","NonPKB_BR.071019.000134","40000","CUCI","0000-00-00 00:00:00","","2019-10-07 13:44:06");
INSERT INTO t_paycuci VALUES("BM_BR.071119.000180","2019-11-07 00:00:00","","Afif","Cash","","NonPKB_BR.071119.000180","10000","CUCI MOTOR","0000-00-00 00:00:00","","2019-11-07 08:04:14");
INSERT INTO t_paycuci VALUES("BM_BR.071119.000181","2019-11-07 00:00:00","","AGUS","Cash","","NonPKB_BR.071119.000181","25000","CUCI","0000-00-00 00:00:00","","2019-11-07 08:06:24");
INSERT INTO t_paycuci VALUES("BM_BR.071119.000182","2019-11-07 00:00:00","","TAUFAN","Cash","","NonPKB_BR.071119.000182","30000","CUCI","0000-00-00 00:00:00","","2019-11-07 13:19:32");
INSERT INTO t_paycuci VALUES("BM_BR.080819.000019","2019-08-08 00:00:00","","PAK BROTO","Cash","","NonPKB_BR.060819.000014","500000","","0000-00-00 00:00:00","","2019-08-08 08:41:26");
INSERT INTO t_paycuci VALUES("BM_BR.080819.000020","2019-08-08 00:00:00","","PAK HARYO","Cash","","NonPKB_BR.080819.000018","40000","","0000-00-00 00:00:00","","2019-08-08 10:29:20");
INSERT INTO t_paycuci VALUES("BM_BR.081019.000137","2019-10-08 00:00:00","","PAK NDARU","Cash","","NonPKB_BR.081019.000135","10000","CUCI","0000-00-00 00:00:00","","2019-10-08 14:20:16");
INSERT INTO t_paycuci VALUES("BM_BR.081019.000138","2019-10-08 00:00:00","","DE TORO","Cash","","NonPKB_BR.081019.000138","25000","CUCI","0000-00-00 00:00:00","","2019-10-08 14:42:15");
INSERT INTO t_paycuci VALUES("BM_BR.081019.000139","2019-10-08 00:00:00","","PAK NUG","Cash","","NonPKB_BR.081019.000136","25000","CUCI","0000-00-00 00:00:00","","2019-10-08 15:25:20");
INSERT INTO t_paycuci VALUES("BM_BR.081019.000140","2019-10-08 00:00:00","","PAK ARIS","Cash","","NonPKB_BR.081019.000137","40000","CUCI","0000-00-00 00:00:00","","2019-10-08 15:57:18");
INSERT INTO t_paycuci VALUES("BM_BR.081119.000183","2019-11-08 00:00:00","","YUDI","Cash","","NonPKB_BR.081119.000184","10000","CUCI MOTOR","0000-00-00 00:00:00","","2019-11-08 15:24:31");
INSERT INTO t_paycuci VALUES("BM_BR.081119.000184","2019-11-08 00:00:00","","BUDI SUTRISNO","Cash","","NonPKB_BR.041119.000175","40000","CUCI","0000-00-00 00:00:00","","2019-11-08 16:58:43");
INSERT INTO t_paycuci VALUES("BM_BR.081119.000185","2019-11-08 00:00:00","","BUDI SUTRISNO","Cash","","NonPKB_BR.041119.000175","40000","CUCI","2019-11-08 16:59:44","TER INPUT 2 KALI","2019-11-08 16:58:43");
INSERT INTO t_paycuci VALUES("BM_BR.090819.000021","2019-08-09 00:00:00","","PAK HARYO","Cash","","NonPKB_BR.090819.000019","40000","","0000-00-00 00:00:00","","2019-08-09 09:45:59");
INSERT INTO t_paycuci VALUES("BM_BR.090819.000022","2019-08-09 00:00:00","","","Cash","","NonPKB_BR.090819.000020","30000","","0000-00-00 00:00:00","","2019-08-09 10:45:17");
INSERT INTO t_paycuci VALUES("BM_BR.090919.000087","2019-09-09 00:00:00","","","Cash","","NonPKB_BR.260819.000062","30000","","2019-09-09 08:06:35","","2019-09-09 08:04:43");
INSERT INTO t_paycuci VALUES("BM_BR.090919.000088","2019-09-09 00:00:00","","BP RUDI","Cash","","NonPKB_BR.090919.000084","300000","","0000-00-00 00:00:00","","2019-09-09 09:19:58");
INSERT INTO t_paycuci VALUES("BM_BR.090919.000089","2019-09-09 00:00:00","","BP TEDDY","Cash","","NonPKB_BR.090919.000085","40000","","0000-00-00 00:00:00","","2019-09-09 14:14:53");
INSERT INTO t_paycuci VALUES("BM_BR.091019.000141","2019-10-09 00:00:00","","THE PARK","Cash","","NonPKB_BR.091019.000143","10000","CUCI","0000-00-00 00:00:00","","2019-10-09 10:01:03");
INSERT INTO t_paycuci VALUES("BM_BR.091019.000142","2019-10-09 00:00:00","","PAK HARYO","Cash","","NonPKB_BR.091019.000140","30000","CUCI","0000-00-00 00:00:00","","2019-10-09 10:13:54");
INSERT INTO t_paycuci VALUES("BM_BR.091019.000143","2019-10-09 00:00:00","","PAK AFIF","Cash","","NonPKB_BR.091019.000142","25000","CUCI","0000-00-00 00:00:00","","2019-10-09 12:44:11");
INSERT INTO t_paycuci VALUES("BM_BR.091019.000144","2019-10-09 00:00:00","","PAK ERIK","Cash","","NonPKB_BR.091019.000141","25000","CUCI","0000-00-00 00:00:00","","2019-10-09 14:07:15");
INSERT INTO t_paycuci VALUES("BM_BR.091019.000145","2019-10-09 00:00:00","","MB FITRI","Cash","","NonPKB_BR.091019.000144","10000","CUCI","0000-00-00 00:00:00","","2019-10-09 14:18:10");
INSERT INTO t_paycuci VALUES("BM_BR.100819.000023","2019-08-10 00:00:00","","PAK AGUNG","Cash","","NonPKB_BR.100819.000021","30000","","0000-00-00 00:00:00","","2019-08-10 10:02:04");
INSERT INTO t_paycuci VALUES("BM_BR.100819.000024","2019-08-10 00:00:00","","DAGANGAN","Cash","","NonPKB_BR.100819.000022","40000","","0000-00-00 00:00:00","","2019-08-10 11:10:48");
INSERT INTO t_paycuci VALUES("BM_BR.100819.000025","2019-08-10 00:00:00","","DAGANGAN","Cash","","NonPKB_BR.100819.000023","30000","","0000-00-00 00:00:00","","2019-08-10 11:12:21");
INSERT INTO t_paycuci VALUES("BM_BR.100919.000090","2019-09-10 00:00:00","","MB MARTINA","Cash","","NonPKB_BR.100919.000086","10000","","0000-00-00 00:00:00","","2019-09-10 08:52:48");
INSERT INTO t_paycuci VALUES("BM_BR.100919.000091","2019-09-10 00:00:00","","MB FITRI","Cash","","NonPKB_BR.100919.000087","10000","","0000-00-00 00:00:00","","2019-09-10 08:54:20");
INSERT INTO t_paycuci VALUES("BM_BR.100919.000092","2019-09-10 00:00:00","","CUSTOMER","Cash","","NonPKB_BR.100919.000088","30000","","0000-00-00 00:00:00","","2019-09-10 15:02:53");
INSERT INTO t_paycuci VALUES("BM_BR.101019.000146","2019-10-10 00:00:00","","PAK RENDRA","Cash","","NonPKB_BR.081019.000139","30000","CUCI","0000-00-00 00:00:00","","2019-10-10 14:30:03");
INSERT INTO t_paycuci VALUES("BM_BR.101019.000147","2019-10-10 00:00:00","","PAK NDARU","Cash","","NonPKB_BR.101019.000146","10000","CUCI","0000-00-00 00:00:00","","2019-10-10 15:34:20");
INSERT INTO t_paycuci VALUES("BM_BR.111019.000148","2019-10-11 00:00:00","","DE TORO","Cash","","NonPKB_BR.111019.000148","10000","CUCI","0000-00-00 00:00:00","","2019-10-11 08:37:24");
INSERT INTO t_paycuci VALUES("BM_BR.111019.000149","2019-10-11 00:00:00","","PAK NUG","Cash","","NonPKB_BR.111019.000149","10000","CUCI","0000-00-00 00:00:00","","2019-10-11 09:27:56");
INSERT INTO t_paycuci VALUES("BM_BR.111019.000150","2019-10-11 00:00:00","","PAK DAVID","Cash","","NonPKB_BR.111019.000150","40000","CUCI","0000-00-00 00:00:00","","2019-10-11 14:18:52");
INSERT INTO t_paycuci VALUES("BM_BR.111019.000151","2019-10-11 00:00:00","","PAK DAVID","Cash","","NonPKB_BR.111019.000151","40000","CUCI","0000-00-00 00:00:00","","2019-10-11 15:42:31");
INSERT INTO t_paycuci VALUES("BM_BR.111119.000185","2019-11-11 00:00:00","","INGGIL","Cash","","NonPKB_BR.081119.000183","30000","CUCI","0000-00-00 00:00:00","","2019-11-11 08:27:19");
INSERT INTO t_paycuci VALUES("BM_BR.120819.000026","2019-08-12 00:00:00","","BU YENI","Cash","","NonPKB_BR.120819.000024","299950","","2019-08-19 08:46:55","","2019-08-12 12:39:08");
INSERT INTO t_paycuci VALUES("BM_BR.120919.000093","2019-09-12 00:00:00","","PAK HARYO","Cash","","NonPKB_BR.110919.000089","30000","","0000-00-00 00:00:00","","2019-09-12 08:39:54");
INSERT INTO t_paycuci VALUES("BM_BR.120919.000094","2019-09-12 00:00:00","","PAK HARYO","Cash","","NonPKB_BR.110919.000090","30000","","0000-00-00 00:00:00","","2019-09-12 08:40:03");
INSERT INTO t_paycuci VALUES("BM_BR.120919.000095","2019-09-12 00:00:00","","CUSTOMER","Cash","","NonPKB_BR.120919.000091","40000","","0000-00-00 00:00:00","","2019-09-12 08:55:01");
INSERT INTO t_paycuci VALUES("BM_BR.120919.000096","2019-09-12 00:00:00","","BU KURNIA","Cash","","NonPKB_BR.120919.000093","25000","","0000-00-00 00:00:00","","2019-09-12 15:00:00");
INSERT INTO t_paycuci VALUES("BM_BR.120919.000097","2019-09-12 00:00:00","","PAK NUG","Cash","","NonPKB_BR.120919.000094","25000","","0000-00-00 00:00:00","","2019-09-12 15:08:28");
INSERT INTO t_paycuci VALUES("BM_BR.120919.000098","2019-09-12 00:00:00","","PAK NUG","Cash","","NonPKB_BR.120919.000095","10000","","0000-00-00 00:00:00","","2019-09-12 15:10:36");
INSERT INTO t_paycuci VALUES("BM_BR.120919.000099","2019-09-12 00:00:00","","PAK NUG","Cash","","NonPKB_BR.120919.000096","10000","","0000-00-00 00:00:00","","2019-09-12 15:10:49");
INSERT INTO t_paycuci VALUES("BM_BR.121019.000152","2019-10-12 00:00:00","","PAK HARYO","Cash","","NonPKB_BR.111019.000147","40000","CUCI","0000-00-00 00:00:00","","2019-10-12 10:13:03");
INSERT INTO t_paycuci VALUES("BM_BR.121119.000186","2019-11-12 00:00:00","","HYUNDAI SOLOBARU","Cash","","NonPKB_BR.121119.000187","30000","CUCI UNIT BARU (HYUNDAI GRAND SANTA FE)","0000-00-00 00:00:00","","2019-11-12 09:41:57");
INSERT INTO t_paycuci VALUES("BM_BR.121119.000187","2019-11-12 00:00:00","","RENA","Cash","","NonPKB_BR.121119.000188","30000","CUCI","0000-00-00 00:00:00","","2019-11-12 10:15:15");
INSERT INTO t_paycuci VALUES("BM_BR.131119.000188","2019-11-13 00:00:00","","YESICA","Cash","","NonPKB_BR.131119.000190","25000","CUCI","0000-00-00 00:00:00","","2019-11-13 09:52:11");
INSERT INTO t_paycuci VALUES("BM_BR.131119.000189","2019-11-13 00:00:00","","SATRIO","Cash","","NonPKB_BR.131119.000191","10000","CUCI","0000-00-00 00:00:00","","2019-11-13 15:45:06");
INSERT INTO t_paycuci VALUES("BM_BR.140819.000027","2019-08-14 00:00:00","","PAK HARYO","Cash","","NonPKB_BR.140819.000025","40000","","0000-00-00 00:00:00","","2019-08-14 07:56:40");
INSERT INTO t_paycuci VALUES("BM_BR.140819.000028","2019-08-14 00:00:00","","DAGANGAN","Cash","","NonPKB_BR.140819.000026","30000","","0000-00-00 00:00:00","","2019-08-14 08:00:12");
INSERT INTO t_paycuci VALUES("BM_BR.140919.000100","2019-09-14 00:00:00","","MAS ENDRI","Cash","","NonPKB_BR.140919.000097","10000","","0000-00-00 00:00:00","","2019-09-14 12:30:46");
INSERT INTO t_paycuci VALUES("BM_BR.150819.000029","2019-08-15 00:00:00","","PAK THOMAS","Cash","","NonPKB_BR.150819.000027","30000","","0000-00-00 00:00:00","","2019-08-15 08:03:16");
INSERT INTO t_paycuci VALUES("BM_BR.150819.000030","2019-08-15 00:00:00","","PAK THOMAS","Cash","","NonPKB_BR.150819.000028","25500","","0000-00-00 00:00:00","","2019-08-15 12:40:24");
INSERT INTO t_paycuci VALUES("BM_BR.150819.000031","2019-08-15 00:00:00","","PAK HARYO","Cash","","NonPKB_BR.150819.000029","30000","","0000-00-00 00:00:00","","2019-08-15 12:42:51");
INSERT INTO t_paycuci VALUES("BM_BR.150819.000033","2019-08-15 00:00:00","","PAK RENDRA","Cash","","NonPKB_BR.150819.000031","30000","","0000-00-00 00:00:00","","2019-08-15 15:33:01");
INSERT INTO t_paycuci VALUES("BM_BR.151119.000190","2019-11-15 00:00:00","","DAVID","Cash","","NonPKB_BR.151119.000192","30000","CUCI","0000-00-00 00:00:00","","2019-11-15 13:14:54");
INSERT INTO t_paycuci VALUES("BM_BR.151119.000191","2019-11-15 00:00:00","","BAYU","Cash","","NonPKB_BR.151119.000193","30000","CUCI","0000-00-00 00:00:00","","2019-11-15 13:15:11");
INSERT INTO t_paycuci VALUES("BM_BR.160819.000034","2019-08-16 00:00:00","","PAK EDWIN","Cash","","NonPKB_BR.160819.000032","1000000","","0000-00-00 00:00:00","","2019-08-16 10:12:34");
INSERT INTO t_paycuci VALUES("BM_BR.160819.000035","2019-08-16 00:00:00","","PAK THOMAS","Cash","","NonPKB_BR.160819.000033","25000","","0000-00-00 00:00:00","","2019-08-16 11:00:06");
INSERT INTO t_paycuci VALUES("BM_BR.160819.000036","2019-08-16 00:00:00","","MBK MARTINA","Cash","","NonPKB_BR.160819.000034","30000","","0000-00-00 00:00:00","","2019-08-16 15:25:34");
INSERT INTO t_paycuci VALUES("BM_BR.160919.000101","2019-09-16 00:00:00","","PAK NDARU","Cash","","NonPKB_BR.160919.000100","30000","","0000-00-00 00:00:00","","2019-09-16 13:24:21");
INSERT INTO t_paycuci VALUES("BM_BR.160919.000102","2019-09-16 00:00:00","","KANTOR","Cash","","NonPKB_BR.160919.000099","30000","","0000-00-00 00:00:00","","2019-09-16 13:30:47");
INSERT INTO t_paycuci VALUES("BM_BR.160919.000103","2019-09-16 00:00:00","","MAS SATRIO","Cash","","NonPKB_BR.160919.000101","25000","","0000-00-00 00:00:00","","2019-09-16 13:38:45");
INSERT INTO t_paycuci VALUES("BM_BR.160919.000104","2019-09-16 00:00:00","","IBU TOKI","Cash","","NonPKB_BR.160919.000102","25000","","0000-00-00 00:00:00","","2019-09-16 15:56:48");
INSERT INTO t_paycuci VALUES("BM_BR.161019.000153","2019-10-16 00:00:00","","PAK NUG","Cash","","NonPKB_BR.151019.000155","25000","CUCI","0000-00-00 00:00:00","","2019-10-16 07:59:30");
INSERT INTO t_paycuci VALUES("BM_BR.161119.000192","2019-11-16 00:00:00","","IKA","Cash","","NonPKB_BR.161119.000194","25000","CUCI","0000-00-00 00:00:00","","2019-11-16 08:34:55");
INSERT INTO t_paycuci VALUES("BM_BR.161119.000193","2019-11-16 00:00:00","","THOMAS","Cash","","NonPKB_BR.161119.000195","40000","CUCI","0000-00-00 00:00:00","","2019-11-16 11:34:36");
INSERT INTO t_paycuci VALUES("BM_BR.170919.000105","2019-09-17 00:00:00","","BU KRISTIN","Cash","","NonPKB_BR.160919.000103","25000","","0000-00-00 00:00:00","","2019-09-17 08:09:50");
INSERT INTO t_paycuci VALUES("BM_BR.170919.000106","2019-09-17 00:00:00","","PAK BUDI","Cash","","NonPKB_BR.160919.000104","40000","","0000-00-00 00:00:00","","2019-09-17 08:43:27");
INSERT INTO t_paycuci VALUES("BM_BR.170919.000107","2019-09-17 00:00:00","","PAK RONY","Cash","","NonPKB_BR.170919.000105","25000","","0000-00-00 00:00:00","","2019-09-17 08:45:14");
INSERT INTO t_paycuci VALUES("BM_BR.171019.000154","2019-10-17 00:00:00","","CUSTOMER","Cash","","NonPKB_BR.171019.000161","30000","CUCI","0000-00-00 00:00:00","","2019-10-17 14:26:32");
INSERT INTO t_paycuci VALUES("BM_BR.171019.000155","2019-10-17 00:00:00","","SUGENG TRI","Transfer","","NonPKB_BR.151019.000152","2000000","PEMBAYARAN COATING","0000-00-00 00:00:00","","2019-10-17 15:45:51");
INSERT INTO t_paycuci VALUES("BM_BR.181019.000156","2019-10-18 00:00:00","","PAK HARYO","Cash","","NonPKB_BR.171019.000160","30000","CUCI","0000-00-00 00:00:00","","2019-10-18 12:59:40");
INSERT INTO t_paycuci VALUES("BM_BR.181119.000194","2019-11-18 00:00:00","","YESICA","Cash","","NonPKB_BR.181119.000196","25000","CUCI","0000-00-00 00:00:00","","2019-11-18 10:07:27");
INSERT INTO t_paycuci VALUES("BM_BR.181119.000195","2019-11-18 00:00:00","","RUDI","Cash","","NonPKB_BR.041119.000174","300000","SALON","0000-00-00 00:00:00","","2019-11-18 13:48:43");
INSERT INTO t_paycuci VALUES("BM_BR.190819.000037","2019-08-19 00:00:00","","MBK FITRI","Cash","","NonPKB_BR.190819.000035","10000","","0000-00-00 00:00:00","","2019-08-19 13:20:58");
INSERT INTO t_paycuci VALUES("BM_BR.190819.000038","2019-08-19 00:00:00","","DAGANGAN","Cash","","NonPKB_BR.190819.000036","40000","","0000-00-00 00:00:00","","2019-08-19 13:38:58");
INSERT INTO t_paycuci VALUES("BM_BR.190819.000039","2019-08-19 00:00:00","","DAGANGAN","Cash","","NonPKB_BR.190819.000037","30000","","0000-00-00 00:00:00","","2019-08-19 14:05:37");
INSERT INTO t_paycuci VALUES("BM_BR.190819.000040","2019-08-19 00:00:00","","PAK HARYO","Cash","","NonPKB_BR.190819.000038","30000","","0000-00-00 00:00:00","","2019-08-19 14:54:37");
INSERT INTO t_paycuci VALUES("BM_BR.190819.000041","2019-08-19 00:00:00","","PAK HARYO","Cash","","NonPKB_BR.190819.000039","40000","","0000-00-00 00:00:00","","2019-08-19 14:56:42");
INSERT INTO t_paycuci VALUES("BM_BR.190919.000108","2019-09-19 00:00:00","","PAK HARYO","Cash","","NonPKB_BR.160919.000098","40000","","0000-00-00 00:00:00","","2019-09-19 07:58:07");
INSERT INTO t_paycuci VALUES("BM_BR.190919.000109","2019-09-19 00:00:00","","PAK NUG","Cash","","NonPKB_BR.190919.000107","25000","","0000-00-00 00:00:00","","2019-09-19 09:18:05");
INSERT INTO t_paycuci VALUES("BM_BR.191019.000157","2019-10-19 00:00:00","","PAK THOMAS","Cash","","NonPKB_BR.151019.000158","25000","CUCI","0000-00-00 00:00:00","","2019-10-19 10:12:37");
INSERT INTO t_paycuci VALUES("BM_BR.191119.000196","2019-11-19 00:00:00","","ADRIAN","Cash","","NonPKB_BR.191119.000198","30000","CUCI","0000-00-00 00:00:00","","2019-11-19 14:03:31");
INSERT INTO t_paycuci VALUES("BM_BR.200919.000110","2019-09-20 00:00:00","","PAK BUDI","Cash","","NonPKB_BR.190919.000108","40000","","0000-00-00 00:00:00","","2019-09-20 15:00:18");
INSERT INTO t_paycuci VALUES("BM_BR.200919.000111","2019-09-20 00:00:00","","","Cash","","NonPKB_BR.200919.000109","30000","","0000-00-00 00:00:00","","2019-09-20 15:09:24");
INSERT INTO t_paycuci VALUES("BM_BR.210819.000042","2019-08-21 00:00:00","","MBK MARTINA","Cash","","NonPKB_BR.210819.000040","30000","","2019-08-22 11:03:37","","2019-08-21 14:31:33");
INSERT INTO t_paycuci VALUES("BM_BR.210819.000043","2019-08-21 00:00:00","","CUSTOMER","Cash","","NonPKB_BR.210819.000041","30000","","0000-00-00 00:00:00","","2019-08-21 15:27:16");
INSERT INTO t_paycuci VALUES("BM_BR.210819.000044","2019-08-21 00:00:00","","PAK TORO","Cash","","NonPKB_BR.210819.000042","10000","","0000-00-00 00:00:00","","2019-08-21 15:50:21");
INSERT INTO t_paycuci VALUES("BM_BR.210919.000112","2019-09-21 00:00:00","","BU MIRA","Cash","","NonPKB_BR.210919.000110","30000","","0000-00-00 00:00:00","","2019-09-21 08:11:09");
INSERT INTO t_paycuci VALUES("BM_BR.210919.000113","2019-09-21 00:00:00","","","Cash","","NonPKB_BR.210919.000111","500000","PEMBAYARAN SALON","0000-00-00 00:00:00","","2019-09-21 09:51:57");
INSERT INTO t_paycuci VALUES("BM_BR.210919.000114","2019-09-21 00:00:00","","MAS BAYU","Cash","","NonPKB_BR.210919.000114","10000","","0000-00-00 00:00:00","","2019-09-21 10:19:37");
INSERT INTO t_paycuci VALUES("BM_BR.210919.000115","2019-09-21 00:00:00","","THE PARK","Cash","","NonPKB_BR.210919.000112","10000","","0000-00-00 00:00:00","","2019-09-21 13:43:57");
INSERT INTO t_paycuci VALUES("BM_BR.210919.000116","2019-09-21 00:00:00","","THE PARK","Cash","","NonPKB_BR.210919.000113","10000","","0000-00-00 00:00:00","","2019-09-21 13:44:13");
INSERT INTO t_paycuci VALUES("BM_BR.220819.000045","2019-08-22 00:00:00","","BU IKA","Cash","","NonPKB_BR.220819.000043","25000","","0000-00-00 00:00:00","","2019-08-22 10:38:05");
INSERT INTO t_paycuci VALUES("BM_BR.220819.000046","2019-08-22 00:00:00","","BU YENI","Cash","","NonPKB_BR.120819.000024","300000","","2019-08-22 15:01:02","","2019-08-22 11:51:51");
INSERT INTO t_paycuci VALUES("BM_BR.220819.000047","2019-08-22 00:00:00","","PAK KARDI","Cash","","NonPKB_BR.220819.000044","30000","","0000-00-00 00:00:00","","2019-08-22 12:45:05");
INSERT INTO t_paycuci VALUES("BM_BR.220819.000048","2019-08-22 00:00:00","","PAK NUG","Cash","","NonPKB_BR.220819.000045","30000","","0000-00-00 00:00:00","","2019-08-22 14:21:39");
INSERT INTO t_paycuci VALUES("BM_BR.220819.000049","2019-08-22 00:00:00","","BU YENI","Cash","","NonPKB_BR.220819.000046","300000","","0000-00-00 00:00:00","","2019-08-22 15:03:11");
INSERT INTO t_paycuci VALUES("BM_BR.220819.000050","2019-08-22 00:00:00","","CUSTOMER","Cash","","NonPKB_BR.220819.000047","30000","","0000-00-00 00:00:00","","2019-08-22 16:00:14");
INSERT INTO t_paycuci VALUES("BM_BR.221019.000158","2019-10-22 00:00:00","","","Cash","","NonPKB_BR.151019.000153","600000","PEMBAYARAN SALON","0000-00-00 00:00:00","","2019-10-22 15:01:33");
INSERT INTO t_paycuci VALUES("BM_BR.221019.000159","2019-10-22 00:00:00","","ARIS","Cash","","NonPKB_BR.211019.000162","30000","CUCI","0000-00-00 00:00:00","","2019-10-22 15:06:41");
INSERT INTO t_paycuci VALUES("BM_BR.221119.000197","2019-11-22 00:00:00","","BUDI SUTRISNO","Cash","","NonPKB_BR.181119.000197","30000","CUCI","0000-00-00 00:00:00","","2019-11-22 13:29:04");
INSERT INTO t_paycuci VALUES("BM_BR.230819.000051","2019-08-23 00:00:00","","","Cash","","NonPKB_BR.230819.000048","10000","","0000-00-00 00:00:00","","2019-08-23 11:04:50");
INSERT INTO t_paycuci VALUES("BM_BR.230819.000052","2019-08-23 00:00:00","","PAK HARYO","Cash","","NonPKB_BR.230819.000049","30000","","0000-00-00 00:00:00","","2019-08-23 13:36:16");
INSERT INTO t_paycuci VALUES("BM_BR.230819.000053","2019-08-23 00:00:00","","KANTOR","Cash","","NonPKB_BR.230819.000050","30000","","0000-00-00 00:00:00","","2019-08-23 13:38:18");
INSERT INTO t_paycuci VALUES("BM_BR.230819.000054","2019-08-23 00:00:00","","PAK NUG","Cash","","NonPKB_BR.230819.000051","10000","","0000-00-00 00:00:00","","2019-08-23 14:53:13");
INSERT INTO t_paycuci VALUES("BM_BR.230919.000117","2019-09-23 00:00:00","","PAK MUL","Cash","","NonPKB_BR.230919.000117","10000","","0000-00-00 00:00:00","","2019-09-23 13:12:20");
INSERT INTO t_paycuci VALUES("BM_BR.230919.000118","2019-09-23 00:00:00","","PAK ERIK","Cash","","NonPKB_BR.230919.000116","25000","","0000-00-00 00:00:00","","2019-09-23 13:39:13");
INSERT INTO t_paycuci VALUES("BM_BR.230919.000119","2019-09-23 00:00:00","","PAK NUG","Cash","","NonPKB_BR.210919.000115","25000","","0000-00-00 00:00:00","","2019-09-23 14:00:02");
INSERT INTO t_paycuci VALUES("BM_BR.230919.000120","2019-09-23 00:00:00","","PAK BAYU","Cash","","NonPKB_BR.230919.000118","30000","","0000-00-00 00:00:00","","2019-09-23 15:23:02");
INSERT INTO t_paycuci VALUES("BM_BR.231019.000160","2019-10-23 00:00:00","","MOBIL BEKAS","Cash","","NonPKB_BR.170919.000106","30000","","0000-00-00 00:00:00","","2019-10-23 15:48:23");
INSERT INTO t_paycuci VALUES("BM_BR.231019.000161","2019-10-23 00:00:00","","MOBIL BEKAS","Cash","","NonPKB_BR.151019.000156","40000","","0000-00-00 00:00:00","","2019-10-23 15:48:48");
INSERT INTO t_paycuci VALUES("BM_BR.231119.000198","2019-11-23 00:00:00","","ISMANTORO","Cash","","NonPKB_BR.231119.000199","25000","CUCI","0000-00-00 00:00:00","","2019-11-23 10:23:33");
INSERT INTO t_paycuci VALUES("BM_BR.240819.000055","2019-08-24 00:00:00","","PAK ZAEN","Cash","","NonPKB_BR.240819.000052","25000","","0000-00-00 00:00:00","","2019-08-24 09:23:15");
INSERT INTO t_paycuci VALUES("BM_BR.240819.000056","2019-08-24 00:00:00","","BU YULIA","Cash","","NonPKB_BR.240819.000053","25000","","0000-00-00 00:00:00","","2019-08-24 09:32:55");
INSERT INTO t_paycuci VALUES("BM_BR.240819.000057","2019-08-24 00:00:00","","BP MUSTOFA","Cash","","NonPKB_BR.240819.000054","3000000","","0000-00-00 00:00:00","","2019-08-24 11:38:24");
INSERT INTO t_paycuci VALUES("BM_BR.240919.000121","2019-09-24 00:00:00","","PAK HARYO","Cash","","NonPKB_BR.230919.000119","40000","","0000-00-00 00:00:00","","2019-09-24 13:14:41");
INSERT INTO t_paycuci VALUES("BM_BR.241019.000162","2019-10-24 00:00:00","","BU IKA - THE PARK","Cash","","NonPKB_BR.241019.000163","25000","CUCI","0000-00-00 00:00:00","","2019-10-24 14:37:34");
INSERT INTO t_paycuci VALUES("BM_BR.250919.000122","2019-09-25 00:00:00","","MAS INGGIL","Cash","","NonPKB_BR.250919.000121","30000","","0000-00-00 00:00:00","","2019-09-25 10:01:41");
INSERT INTO t_paycuci VALUES("BM_BR.250919.000123","2019-09-25 00:00:00","","MAY BAYU","Cash","","NonPKB_BR.250919.000122","10000","","0000-00-00 00:00:00","","2019-09-25 14:05:48");
INSERT INTO t_paycuci VALUES("BM_BR.251119.000199","2019-11-25 00:00:00","","GALIH","Cash","","NonPKB_BR.251119.000201","10000","CUCI MOTOR","0000-00-00 00:00:00","","2019-11-25 08:13:42");
INSERT INTO t_paycuci VALUES("BM_BR.251119.000200","2019-11-25 00:00:00","","EKO","Cash","","NonPKB_BR.251119.000202","25000","CUCI","0000-00-00 00:00:00","","2019-11-25 15:06:50");
INSERT INTO t_paycuci VALUES("BM_BR.251119.000201","2019-11-25 00:00:00","","ERIK - THE PARK","Cash","","NonPKB_BR.251119.000203","25000","CUCI","0000-00-00 00:00:00","","2019-11-25 16:11:26");
INSERT INTO t_paycuci VALUES("BM_BR.260819.000058","2019-08-26 00:00:00","","PAK ERIK","Cash","","NonPKB_BR.260819.000055","25000","","0000-00-00 00:00:00","","2019-08-26 09:01:01");
INSERT INTO t_paycuci VALUES("BM_BR.260819.000059","2019-08-26 00:00:00","","","Cash","","NonPKB_BR.260819.000056","10000","","0000-00-00 00:00:00","","2019-08-26 09:02:32");
INSERT INTO t_paycuci VALUES("BM_BR.260819.000060","2019-08-26 00:00:00","","CUSTOMER","Cash","","NonPKB_BR.260819.000057","40000","","0000-00-00 00:00:00","","2019-08-26 14:11:28");
INSERT INTO t_paycuci VALUES("BM_BR.260819.000061","2019-08-26 00:00:00","","","Cash","","NonPKB_BR.260819.000058","500000","","0000-00-00 00:00:00","","2019-08-26 14:48:12");
INSERT INTO t_paycuci VALUES("BM_BR.260819.000062","2019-08-26 00:00:00","","CUSTOMER","Cash","","NonPKB_BR.260819.000059","350000","","0000-00-00 00:00:00","","2019-08-26 15:26:43");
INSERT INTO t_paycuci VALUES("BM_BR.260819.000063","2019-08-26 00:00:00","","PAK RONY THE PARK","Cash","","NonPKB_BR.260819.000060","25000","","0000-00-00 00:00:00","","2019-08-26 16:05:28");
INSERT INTO t_paycuci VALUES("BM_BR.260819.000064","2019-08-26 00:00:00","","PAK BAYU","Cash","","NonPKB_BR.260819.000061","30000","","0000-00-00 00:00:00","","2019-08-26 16:13:17");
INSERT INTO t_paycuci VALUES("BM_BR.260919.000124","2019-09-26 00:00:00","","PAK HARYO","Cash","","NonPKB_BR.250919.000120","40000","CUCI","0000-00-00 00:00:00","","2019-09-26 10:29:33");
INSERT INTO t_paycuci VALUES("BM_BR.261019.000163","2019-10-26 00:00:00","","PAK RONY","Cash","","NonPKB_BR.261019.000166","25000","CUCI","0000-00-00 00:00:00","","2019-10-26 12:46:52");
INSERT INTO t_paycuci VALUES("BM_BR.261119.000202","2019-11-26 00:00:00","","HONDA JLOPO","Cash","","NonPKB_BR.120919.000092","40000","CUCI MOBIL DAGANGAN","0000-00-00 00:00:00","","2019-11-26 15:19:19");
INSERT INTO t_paycuci VALUES("BM_BR.261119.000203","2019-11-26 00:00:00","","HONDA JLOPO","Cash","","NonPKB_BR.301019.000169","40000","CUCI MOBIL DAGANGAN","0000-00-00 00:00:00","","2019-11-26 15:20:00");
INSERT INTO t_paycuci VALUES("BM_BR.261119.000204","2019-11-26 00:00:00","","HONDA JLOPO","Cash","","NonPKB_BR.121119.000189","25000","CUCI DAGANGAN","0000-00-00 00:00:00","","2019-11-26 15:20:29");
INSERT INTO t_paycuci VALUES("BM_BR.270819.000065","2019-08-27 00:00:00","","PAK BUDI","Cash","","NonPKB_BR.260819.000063","40000","","0000-00-00 00:00:00","","2019-08-27 07:55:02");
INSERT INTO t_paycuci VALUES("BM_BR.270819.000066","2019-08-27 00:00:00","","","Cash","","NonPKB_BR.260819.000062","30000","","2019-08-27 08:37:58","","2019-08-27 08:37:53");
INSERT INTO t_paycuci VALUES("BM_BR.270819.000067","2019-08-27 00:00:00","","PAK BUDI","Cash","","NonPKB_BR.270819.000064","40000","","0000-00-00 00:00:00","","2019-08-27 10:26:17");
INSERT INTO t_paycuci VALUES("BM_BR.280819.000068","2019-08-28 00:00:00","","THE PARK","Cash","","NonPKB_BR.280819.000065","25000","","0000-00-00 00:00:00","","2019-08-28 09:38:54");
INSERT INTO t_paycuci VALUES("BM_BR.280819.000069","2019-08-28 00:00:00","","IBU YUNI","Cash","","NonPKB_BR.280819.000066","45000","","0000-00-00 00:00:00","","2019-08-28 14:18:35");
INSERT INTO t_paycuci VALUES("BM_BR.280819.000070","2019-08-28 00:00:00","","PAK BUDI","Cash","","NonPKB_BR.280819.000067","40000","","0000-00-00 00:00:00","","2019-08-28 14:46:05");
INSERT INTO t_paycuci VALUES("BM_BR.280919.000125","2019-09-28 00:00:00","","KANTOR","Cash","","NonPKB_BR.280919.000123","30000","CUCI","0000-00-00 00:00:00","","2019-09-28 10:10:42");
INSERT INTO t_paycuci VALUES("BM_BR.281019.000164","2019-10-28 00:00:00","","NDARU","Cash","","NonPKB_BR.241019.000164","450000","SALON","0000-00-00 00:00:00","","2019-10-28 10:27:08");
INSERT INTO t_paycuci VALUES("BM_BR.281019.000165","2019-10-28 00:00:00","","RANU - THE PARK","Cash","","NonPKB_BR.281019.000167","25000","CUCI","0000-00-00 00:00:00","","2019-10-28 11:12:40");
INSERT INTO t_paycuci VALUES("BM_BR.281019.000166","2019-10-28 00:00:00","","IMAM - THE PARK","Cash","","NonPKB_BR.281019.000168","25000","CUCI","0000-00-00 00:00:00","","2019-10-28 14:03:07");
INSERT INTO t_paycuci VALUES("BM_BR.281119.000205","2019-11-28 00:00:00","","MICHAEL","Cash","","NonPKB_BR.281119.000204","30000","CUCI","0000-00-00 00:00:00","","2019-11-28 14:36:35");
INSERT INTO t_paycuci VALUES("BM_BR.281119.000206","2019-11-28 00:00:00","","RUDI","Cash","","NonPKB_BR.231119.000200","300000","SALON","0000-00-00 00:00:00","","2019-11-28 15:21:45");
INSERT INTO t_paycuci VALUES("BM_BR.281119.000207","2019-11-28 00:00:00","","ISMANTORO","Cash","","NonPKB_BR.281119.000205","10000","CUCI MOTOR","0000-00-00 00:00:00","","2019-11-28 16:13:46");
INSERT INTO t_paycuci VALUES("BM_BR.290819.000071","2019-08-29 00:00:00","","KANTOR","Cash","","NonPKB_BR.290819.000068","40000","","0000-00-00 00:00:00","","2019-08-29 09:31:49");
INSERT INTO t_paycuci VALUES("BM_BR.290819.000072","2019-08-29 00:00:00","","","Cash","","NonPKB_BR.290819.000069","30000","","0000-00-00 00:00:00","","2019-08-29 14:28:32");
INSERT INTO t_paycuci VALUES("BM_BR.300819.000073","2019-08-30 00:00:00","","PAK NUG","Cash","","NonPKB_BR.300819.000070","30000","","0000-00-00 00:00:00","","2019-08-30 15:34:10");
INSERT INTO t_paycuci VALUES("BM_BR.300919.000126","2019-09-30 00:00:00","","MAS SATRIO","Cash","","NonPKB_BR.300919.000124","25000","CUCI","0000-00-00 00:00:00","","2019-09-30 15:04:31");
INSERT INTO t_paycuci VALUES("BM_BR.300919.000127","2019-09-30 00:00:00","","PAK ADRIAN","Cash","","NonPKB_BR.300919.000125","400000","","0000-00-00 00:00:00","","2019-09-30 15:35:20");
INSERT INTO t_paycuci VALUES("BM_BR.301019.000167","2019-10-30 00:00:00","","YESICA","Cash","","NonPKB_BR.301019.000170","25000","CUCI","0000-00-00 00:00:00","","2019-10-30 09:58:50");
INSERT INTO t_paycuci VALUES("BM_BR.301019.000168","2019-10-30 00:00:00","","YESICA","Cash","","NonPKB_BR.301019.000171","25000","CUCI","0000-00-00 00:00:00","","2019-10-30 15:39:04");
INSERT INTO t_paycuci VALUES("BM_BR.301119.000208","2019-11-30 00:00:00","","IMAM - THE PARK","Cash","","NonPKB_BR.301119.000207","25000","CUCI","0000-00-00 00:00:00","","2019-11-30 10:37:59");
INSERT INTO t_paycuci VALUES("BM_BR.310719.000001","2019-07-31 00:00:00","","","Cash","","NonPKB_BR.310719.000","35000","ok","2019-08-02 14:36:02","BATAL","2019-07-31 12:57:23");
INSERT INTO t_paycuci VALUES("BM_BR.310819.000074","2019-08-31 00:00:00","","BP IMAM","Cash","","NonPKB_BR.310819.000071","25000","","0000-00-00 00:00:00","","2019-08-31 09:36:16");
INSERT INTO t_paycuci VALUES("BM_BR.311019.000169","2019-10-31 00:00:00","","SUGENG","Cash","","NonPKB_BR.241019.000165","30000","CUCI","0000-00-00 00:00:00","","2019-10-31 08:07:02");
INSERT INTO t_paycuci VALUES("BM_BR.311019.000170","2019-10-31 00:00:00","","THOMAS","Transfer","","NonPKB_BR.171019.000159","450000","SALON","0000-00-00 00:00:00","","2019-10-31 15:51:24");
INSERT INTO t_paycuci VALUES("BM_BR.311019.000171","2019-10-31 00:00:00","","THOMAS","Transfer","","NonPKB_BR.101019.000145","400000","SALON","0000-00-00 00:00:00","","2019-10-31 15:53:58");
INSERT INTO t_paycuci VALUES("BM_BR.311019.000172","2019-10-31 00:00:00","","THOMAS","Transfer","","NonPKB_BR.151019.000154","350000","SALON","0000-00-00 00:00:00","","2019-10-31 15:58:38");
INSERT INTO t_paycuci VALUES("BM_BR.311019.000173","2019-10-31 00:00:00","","THOMAS","Transfer","","NonPKB_BR.151019.000157","200000","EXTERIOR","0000-00-00 00:00:00","","2019-10-31 15:59:23");



DROP TABLE t_pkb;

CREATE TABLE `t_pkb` (
  `id_pkb` varchar(50) NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `kategori` varchar(10) NOT NULL,
  `fk_no_chasis` varchar(50) NOT NULL,
  `fk_no_mesin` varchar(50) NOT NULL,
  `fk_no_polisi` varchar(50) NOT NULL,
  `fk_customer` varchar(50) NOT NULL,
  `fk_asuransi` varchar(50) NOT NULL,
  `km_masuk` varchar(50) NOT NULL,
  `fk_user` varchar(50) NOT NULL,
  `total_gross_harga_panel` double NOT NULL,
  `total_diskon_rupiah_panel` double NOT NULL,
  `total_netto_harga_panel` double NOT NULL,
  `total_gross_harga_part` double NOT NULL,
  `total_diskon_rupiah_part` double NOT NULL,
  `total_netto_harga_part` double NOT NULL,
  `total_gross_harga_jasa` double NOT NULL,
  `total_diskon_rupiah_jasa` double NOT NULL,
  `total_netto_harga_jasa` double NOT NULL,
  `tgl_batal` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `fk_estimasi` varchar(50) DEFAULT NULL,
  `status_pkb` enum('Buka','Tutup','','') NOT NULL DEFAULT 'Buka',
  PRIMARY KEY (`id_pkb`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_pkb VALUES("PKB_BR.021019.000019","2019-10-02 08:31:47","Asuransi","MHKV3BA6JEK005986","MD82386","AD 9382 TU","CUST_BR.260919.000022","RAKSA","","admin","4227272.726900001","422727.27269","3804545.4542099996","0","0","0","4227272.726900001","422727.27269","3804545.4542099996","0000-00-00 00:00:00","EST_BR.260919.000033","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.021019.000020","2019-10-09 08:39:55","Asuransi","MHKV5EB2JJK004803","1NRF383974","H 8659 LR","CUST_BR.130919.000009","MPMR","","admin","3430000","0","3430000","1270500","0","1270500","4700500","0","4700500","0000-00-00 00:00:00","EST_BR.270919.000036","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.021119.000032","2019-11-02 10:47:53","Asuransi","MHRDD1750GJ704521","L12B31812401","B 1357 KIT","CUST_BR.301019.000042","ABDA","22055","admin","522727.27259999997","0","522727.27259999997","2199709.0907","109985.454535","2089723.636165","2722436.3633","109985.454535","2612450.908765","0000-00-00 00:00:00","EST_BR.301019.000070","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.021119.000033","2019-11-02 11:54:28","Pribadi","MRHDD2860DP410983","L13Z52201673","AD 8957 CP","CUST_BR.091019.000029","","","admin","454545.4545","0","454545.4545","0","0","0","454545.4545","0","454545.4545","0000-00-00 00:00:00","EST_BR.291019.000069","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.041119.000034","2019-11-04 15:00:41","Pribadi","JHMZF1421DS300006","LEA33001081","B 1700 K","CUST_BR.041119.000048","","","admin","363636.3636","0","363636.3636","0","0","0","363636.3636","0","363636.3636","0000-00-00 00:00:00","EST_BR.041119.000076","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.051019.000021","2019-10-07 15:56:55","Pribadi","MM6DJ2HAAHW325025","P520459460","B 1977 NRQ","CUST_BR.031019.000026","","15779","admin","454545.4545","0","454545.4545","0","0","0","454545.4545","0","454545.4545","0000-00-00 00:00:00","EST_BR.031019.000042","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.051119.000035","2019-11-05 09:25:04","Pribadi","WD21M73114","Z24975923Y","AD 8888 AT","CUST_BR.091019.000031","","","admin","636363.6362","0","636363.6362","0","0","0","636363.6362","0","636363.6362","0000-00-00 00:00:00","EST_BR.091019.000048","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.071019.000022","2019-10-07 15:16:31","Asuransi","MHKM5EB3JJKO18884","1NRF394826","H 8713 LR","CUST_BR.130919.000009","MPMR","","admin","2889000","0","2889000","0","0","0","2889000","0","2889000","0000-00-00 00:00:00","EST_BR.300919.000039","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.081019.000022","2019-10-14 08:21:25","Pribadi","MPB2XXMXB2CL11351","MGDBCL11351","AD 7267 LF","CUST_BR.041019.000027","","74685","admin","1272727.2726","0","1272727.2726","0","0","0","1272727.2726","0","1272727.2726","0000-00-00 00:00:00","EST_BR.041019.000043","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.081119.000036","2019-11-08 15:41:15","Pribadi","MHRRM3850DJ342329","K24Z99407689","AD 7153 BS","CUST_BR.021119.000045","","","admin","409090.909","0","409090.909","0","0","0","409090.909","0","409090.909","0000-00-00 00:00:00","EST_BR.021119.000072","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.110919.000001","2019-09-11 14:49:22","Asuransi","MM6DJ2HAAHW323644","P520456689","AD 9130 U","CUST_BR.110919.000001","BCAI","50580","admin","3350000","335000","3015000","21075708","1053785.4","20021922.6","24425708","1388785.4","23036922.6","0000-00-00 00:00:00","EST_BR.110919.000001","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.111019.000021","2019-10-11 10:34:02","Asuransi","KMHST81CMFU521288","G4KEFA665005","AD 7358 CU","CUST_BR.230919.000021","ACA","","admin","1613636.3635","161363.63635000002","1452272.7271499997","1992727.2727","99636.363635","1893090.909065","3606363.6362","260999.999985","3345363.6362149995","0000-00-00 00:00:00","EST_BR.230919.000026","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.120919.000002","2019-09-12 09:40:59","Asuransi","MHRDD4730GJ602701","L15Z12418855","AD 8962 OH","CUST_BR.120919.000002","PANFIC","","admin","500000","60000","440000","1141000","57050","1083950","1641000","117050","1523950","0000-00-00 00:00:00","EST_BR.120919.000002","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.120919.000003","2019-09-12 10:32:56","Pribadi","MHK84DA1JGJ009188","","B 2320 BKG","CUST_BR.120919.000003","","","admin","999999.9","99999.98999999999","899999.9099999999","0","0","0","999999.9","99999.98999999999","899999.9099999999","0000-00-00 00:00:00","EST_BR.120919.000003","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.120919.000004","2019-09-14 11:23:59","Asuransi","KMHS381EMKU036101","G4KEJD008584","B 1200 KJL","CUST_BR.120919.000004","BCAI","22419","admin","5150000","0","5150000","0","0","0","5150000","0","5150000","0000-00-00 00:00:00","EST_BR.120919.000004","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.121019.000022","2019-10-12 08:37:23","Asuransi","MK2NCWHANJJ003096","4A91DC9043","AD 9282 GR","CUST_BR.101019.000033","BCAI","52575","admin","1500000","150000","1350000","0","0","0","1500000","150000","1350000","0000-00-00 00:00:00","EST_BR.101019.000050","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.121019.000023","2019-10-12 10:06:37","Asuransi","MHKM5PA4JKK053247","2NRF848178","N 1183 BN","CUST_BR.130919.000009","MPM RENT","","admin","2050000","0","2050000","0","0","0","2050000","0","2050000","2019-10-12 10:06:37","EST_BR.051019.000044","Buka");
INSERT INTO t_pkb VALUES("PKB_BR.121019.000024","2019-10-12 10:08:52","Asuransi","MHKM5PA4JKK053247","2NRF848178","N 1183 BN","CUST_BR.130919.000009","MPM RENT","","admin","2050000","0","2050000","0","0","0","2050000","0","2050000","0000-00-00 00:00:00","EST_BR.051019.000044","Buka");
INSERT INTO t_pkb VALUES("PKB_BR.121019.000025","2019-10-12 10:20:24","Asuransi","MHKM5PA4JKK053247","2NRF848178","N 1183 BN","CUST_BR.130919.000009","","6495","admin","2050000","0","2050000","0","0","0","2050000","0","2050000","0000-00-00 00:00:00","EST_BR.121019.000051","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.130919.000005","2019-09-16 15:40:48","Asuransi","MHBG3CG1CFJ037920","HR15726860T","H 9028 MZ","CUST_BR.130919.000009","MPMI","","admin","1954545.4542","0","1954545.4542","0","0","0","1954545.4542","0","1954545.4542","0000-00-00 00:00:00","EST_BR.130919.000011","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.140919.000006","2019-09-17 11:49:20","Asuransi","MHKM5EA2JJK045001","1NRF388289","B 1879 NRP","CUST_BR.130919.000009","MPM RENT","63227","admin","3405000","0","3405000","1614140","0","1614140","5019140","0","5019140","0000-00-00 00:00:00","EST_BR.130919.000010","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.140919.000007","2019-09-14 09:23:36","Pribadi","MPBSXXMXKSFS23962","UEJAFS23962","B 805 PPA","CUST_BR.120919.000006","","","admin","1999999.9999","0","1999999.9999","0","0","0","1999999.9999","0","1999999.9999","0000-00-00 00:00:00","EST_BR.120919.000007","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.141019.000023","2019-10-14 15:22:23","Asuransi","MHKV3BA3JFK040265","K3MG60481","D 1687 ADY","CUST_BR.180919.000018","","","admin","1386363.6361","0","1386363.6361","0","0","0","1386363.6361","0","1386363.6361","0000-00-00 00:00:00","EST_BR.141019.000052","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.141119.000037","2019-11-15 13:33:56","Asuransi","MHYKZE81SFJ307156","K14BT1180131","AD 8911 OA","CUST_BR.111119.000053","ABDA","35916","admin","318181.8181","0","318181.8181","0","0","0","318181.8181","0","318181.8181","0000-00-00 00:00:00","EST_BR.111119.000082","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.151019.000024","2019-10-19 11:18:38","Pribadi","MHKG2CK2J7K000298","DAA8910","AD 8895 IM","CUST_BR.151019.000034","","159072","admin","1090909.0909","0","1090909.0909","0","0","0","1090909.0909","0","1090909.0909","0000-00-00 00:00:00","EST_BR.151019.000053","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.151119.000038","2019-11-15 14:54:15","Pribadi","MHRDD4870FJ459731","L15Z11216697","AD 9181 HT","CUST_BR.061119.000049","","","admin","2454545.4544999995","0","2454545.4544999995","0","0","0","2454545.4544999995","0","2454545.4544999995","0000-00-00 00:00:00","EST_BR.061119.000077","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.161119.000039","2019-11-16 08:48:55","Asuransi","MHKM5EB3JFK001743","1NRF044111","AD 8463 OS","CUST_BR.180919.000018","MPMI","","admin","2886363.6358999996","0","2886363.6358999996","0","0","0","2886363.6358999996","0","2886363.6358999996","0000-00-00 00:00:00","EST_BR.231019.000063","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.170919.000007","2019-09-24 10:10:27","Asuransi","MNTFBUK13Z0078615","HR12396188B","DK 117 NO","CUST_BR.170919.000012","ACA","","admin","5272727.250699999","527272.72507","4745454.525629999","701800","35090","666710","5974527.250699999","562362.72507","5412164.525629999","0000-00-00 00:00:00","EST_BR.170919.000017","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.171019.000025","2019-10-17 15:31:09","Pribadi","MHFGB8EM0K0430380","GUN142R-MDTMYD","AD 8632 AX","CUST_BR.091019.000030","","","admin","545454.5454","0","545454.5454","0","0","0","545454.5454","0","545454.5454","0000-00-00 00:00:00","EST_BR.091019.000047","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.181019.000026","2019-10-18 08:20:35","Pribadi","WDB90665725781184","","B 7170 NAA","CUST_BR.091019.000032","","","admin","1181818.1817","0","1181818.1817","0","0","0","1181818.1817","0","1181818.1817","0000-00-00 00:00:00","EST_BR.091019.000049","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.181019.000027","2019-10-18 10:52:40","Pribadi","MRHGM2660AP021010","L15A72807386","AD 8181 RS","CUST_BR.270919.000023","","","admin","909090.909","0","909090.909","0","0","0","909090.909","0","909090.909","0000-00-00 00:00:00","EST_BR.270919.000035","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.181119.000040","2019-11-18 08:17:57","Pribadi","MHRGB3850CJ211037","L15A75801908","B 1263 ZFE","CUST_BR.041119.000046","","","admin","1363636.3633999997","136363.63634","1227272.7270600002","0","0","0","1363636.3633999997","136363.63634","1227272.7270600002","0000-00-00 00:00:00","EST_BR.041119.000073","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.190919.000008","2019-09-19 10:00:50","Pribadi","MKTTB35NZDK000161","CTH036074","B 2981 TBG","CUST_BR.120919.000008","","","admin","1272727.2726","0","1272727.2726","0","0","0","1272727.2726","0","1272727.2726","0000-00-00 00:00:00","EST_BR.120919.000009","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.190919.000009","2019-09-19 14:03:51","Pribadi","MHFX542G7E2551701","2KDU448071","AD 8410 SU","CUST_BR.120919.000007","","119437","admin","1999999.9817999997","0","1999999.9817999997","0","0","0","1999999.9817999997","0","1999999.9817999997","0000-00-00 00:00:00","EST_BR.120919.000008","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.190919.000010","2019-09-19 14:20:19","Pribadi","MRHFD16408P811145","R18A13910567","AD 7135 WA","CUST_BR.120919.000005","","97611","admin","1454545.4300000002","0","1454545.4300000002","0","0","0","1454545.4300000002","0","1454545.4300000002","0000-00-00 00:00:00","EST_BR.120919.000006","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.191119.000041","2019-11-19 08:53:01","Pribadi","ANH208104102","2AZF382464","H 9354 BZ","CUST_BR.061119.000050","","","admin","409090.909","0","409090.909","0","0","0","409090.909","0","409090.909","0000-00-00 00:00:00","EST_BR.061119.000078","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.191119.000042","2019-11-19 14:20:50","Pribadi","MHRRM3850EJ453010","K24Z9-9427302","AD 7999 YP","CUST_BR.081019.000028","","","admin","3727272.7271","0","3727272.7271","0","0","0","3727272.7271","0","3727272.7271","0000-00-00 00:00:00","EST_BR.081019.000045","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.191119.000043","2019-11-19 14:37:31","Pribadi","MPBSXXMXKSFS23962","UEJAFS23962","B 805 PPA","CUST_BR.120919.000006","","","admin","590909.0909","0","590909.0909","0","0","0","590909.0909","0","590909.0909","0000-00-00 00:00:00","EST_BR.280919.000037","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.201119.000044","2019-11-20 10:36:23","Pribadi","MNBLS4D110AW311993","WLAT1223B59","AD 8775 LK","CUST_BR.191019.000036","","","admin","954545.4545","95454.54545","859090.90905","0","0","0","954545.4545","95454.54545","859090.90905","0000-00-00 00:00:00","EST_BR.041119.000074","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.201119.000045","2019-11-20 10:44:48","Pribadi","WDC2511542A086484","27294530871092","B 105 TA","CUST_BR.021119.000044","","","admin","727272.7272","72727.27272","654545.45448","0","0","0","727272.7272","72727.27272","654545.45448","0000-00-00 00:00:00","EST_BR.021119.000071","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.211019.000025","2019-10-29 09:25:19","Asuransi","MHKB3BA1JJK053290","K3MH34206","AD 1892 UT","CUST_BR.180919.000018","MPMI","","admin","4724545.4535","0","4724545.4535","3229331","161466.55","3067864.45","7953876.4535","161466.55","7792409.9035","0000-00-00 00:00:00","EST_BR.180919.000022","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.211019.000026","2019-10-25 15:15:21","Pribadi","MHFXR42G2F0032001","2KDU706510","B 898 YY","CUST_BR.211019.000038","","","admin","590909.0909","0","590909.0909","0","0","0","590909.0909","0","590909.0909","0000-00-00 00:00:00","EST_BR.211019.000059","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.211019.000027","2019-11-25 08:42:09","Asuransi","JTFSS22PXC0118822","2KD5962733","AD 1054 DB","CUST_BR.170919.000016","BCI","","admin","3681818.1816999996","0","3681818.1816999996","0","0","0","3681818.1816999996","0","3681818.1816999996","0000-00-00 00:00:00","EST_BR.211019.000058","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.211119.000046","2019-11-21 09:16:56","Asuransi","MHRDD1770FJ569934","L12B31481808","H 9147 GW","CUST_BR.121119.000054","ABDA","","admin","2913636.3630999997","0","2913636.3630999997","0","0","0","2913636.3630999997","0","2913636.3630999997","0000-00-00 00:00:00","EST_BR.121119.000084","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.211119.000047","2019-11-21 09:46:13","Asuransi","MK2KRWPNUHJ003143","4N15UBT5090","AD 18 MS","CUST_BR.081119.000052","RAKSA","","admin","2909090.9089","290909.09089","2618181.8180099996","0","0","0","2909090.9089","290909.09089","2618181.8180099996","0000-00-00 00:00:00","EST_BR.081119.000080","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.211119.000048","2019-11-21 14:15:59","Asuransi","MHKM5FA3JJK006191","2NRF682288","W 1985 VH","CUST_BR.180919.000018","MPM RENT","","admin","2370000","0","2370000","0","0","0","2370000","0","2370000","0000-00-00 00:00:00","EST_BR.141119.000086","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.221019.000028","2019-10-22 14:13:13","Pribadi","MHRRD47504J002350","K20A51045207","AD 7796 HA","CUST_BR.280919.000024","","","admin","818181.8181","0","818181.8181","0","0","0","818181.8181","0","818181.8181","0000-00-00 00:00:00","EST_BR.280919.000038","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.221119.000049","2019-11-22 09:22:31","Asuransi","MHKM5EA2JGK010643","1NRF169970","H 8416 YZ","CUST_BR.180919.000018","MPM RENT","","admin","2840000","0","2840000","0","0","0","2840000","0","2840000","2019-11-22 09:22:31","EST_BR.121119.000083","Buka");
INSERT INTO t_pkb VALUES("PKB_BR.221119.000050","2019-11-22 09:32:18","Asuransi","MHKM5EA2JGK010643","1NRF169970","H 8416 YZ","CUST_BR.180919.000018","","","admin","2840000","0","2840000","0","0","0","2840000","0","2840000","0000-00-00 00:00:00","EST_BR.221119.000090","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.221119.000051","2019-11-22 10:30:50","Asuransi","MHKM5EA3JGK040163","1NRF206917","AD 8421 KT","CUST_BR.061119.000051","AHGI","","admin","4590909.0905","459090.9090500001","4131818.1814499996","0","0","0","4590909.0905","459090.9090500001","4131818.1814499996","0000-00-00 00:00:00","EST_BR.061119.000079","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.221119.000052","2019-11-25 09:28:38","Asuransi","JTFSS22PXC0118822","2KD5962733","AD 1054 DB","CUST_BR.170919.000016","BCI","","admin","3272727.2726","0","3272727.2726","0","0","0","3272727.2726","0","3272727.2726","0000-00-00 00:00:00","EST_BR.221119.000091","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.230919.000011","2019-09-23 09:30:34","Pribadi","MHFXR43G2D1010604","2KDU210880","AD 9163 NU","CUST_BR.200919.000019","","","admin","4727272.726700001","472727.27266999986","4254545.45403","552200","0","552200","5279472.726700001","472727.27266999986","4806745.45403","0000-00-00 00:00:00","EST_BR.200919.000023","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.240919.000008","2019-09-24 10:39:57","Asuransi","MK2KRWFNUHJ001518","4N15UCA2499","AD 7162 MG","CUST_BR.170919.000010","MAG","","admin","600000","0","600000","0","0","0","600000","0","600000","0000-00-00 00:00:00","EST_BR.170919.000013","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.240919.000009","2019-09-24 10:47:33","Pribadi","ML320","","AD 8309 UA","CUST_BR.120919.000008","","","admin","909090.9","0","909090.9","0","0","0","909090.9","0","909090.9","0000-00-00 00:00:00","EST_BR.230919.000025","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.240919.000010","2019-09-24 10:58:18","Pribadi","TRUZZZ8N351012460","AUQ100543","B 1110 TB","CUST_BR.120919.000008","","","admin","909090.9016","0","909090.9016","0","0","0","909090.9016","0","909090.9016","0000-00-00 00:00:00","EST_BR.170919.000014","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.240919.000011","2019-09-24 11:08:27","Asuransi","KNABX512MDT572658","G4LADP051886","AD 8862 SU","CUST_BR.170919.000011","PANFIC","","admin","3300000","396000","2904000","0","0","0","3300000","396000","2904000","0000-00-00 00:00:00","EST_BR.170919.000015","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.240919.000012","2019-09-24 08:43:24","Pribadi","MHRRU1850GJ403947","L15Z61035321","AD 8734 BM","CUST_BR.180919.000017","","","admin","590909.0909","59090.90909","531818.18181","0","0","0","590909.0909","59090.90909","531818.18181","0000-00-00 00:00:00","EST_BR.180919.000021","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.240919.000013","2019-09-24 09:18:15","Asuransi","MHKM51A2JJK045001","1NRF388289","B 1879 NRP","CUST_BR.180919.000018","","","admin","0","0","0","400000","0","400000","400000","0","400000","0000-00-00 00:00:00","EST_BR.240919.000027","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.241019.000029","2019-10-24 14:34:30","Asuransi","MRHDD2860DP410983","L13Z52201673","AD 8957 CP","CUST_BR.091019.000029","ACA","124596","admin","6318181.8105","631818.18105","5686363.629449999","2842290","142114.5","2700175.5","9160471.8105","773932.68105","8386539.129449999","2019-10-24 14:34:30","EST_BR.091019.000046","Buka");
INSERT INTO t_pkb VALUES("PKB_BR.241019.000030","2019-10-24 15:03:38","Asuransi","MRHDD2860DP410983","L13Z52201673","AD 8957 CP","CUST_BR.091019.000029","ACA","124596","admin","6318181.8105","631818.18105","5686363.629449999","2842290","142114.5","2700175.5","9160471.8105","773932.68105","8386539.129449999","2019-10-24 15:03:38","EST_BR.241019.000065","Buka");
INSERT INTO t_pkb VALUES("PKB_BR.241019.000031","2019-10-24 15:19:05","Asuransi","MRHDD2860DP410983","L13Z52201673","AD 8957 CP","CUST_BR.091019.000029","ACA","","admin","6318181.8105","631818.18105","5686363.629449999","2842290","142114.5","2700175.5","9160471.8105","773932.68105","8386539.129449999","0000-00-00 00:00:00","EST_BR.241019.000066","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.250919.000012","2019-09-25 08:06:08","Pribadi","MHL2100370L032752","1.12E+12","AD 800","CUST_BR.170919.000013","","","admin","727273","0","727273","0","0","0","727273","0","727273","0000-00-00 00:00:00","EST_BR.170919.000018","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.250919.000013","2019-09-25 08:32:54","Asuransi","MHFJW8EM9H2326008","1TRA249648","AD-9099-NA","CUST_BR.170919.000016","","","admin","1181818.1744","0","1181818.1744","0","0","0","1181818.1744","0","1181818.1744","2019-09-25 08:32:54","EST_BR.240919.000028","Buka");
INSERT INTO t_pkb VALUES("PKB_BR.250919.000014","2019-09-25 08:37:38","Asuransi","MRHCR2640DF301194","K24W31102456","AD 7959 UA","CUST_BR.170919.000014","RAKSA","","admin","3372727.2399999998","0","3372727.2399999998","0","0","0","3372727.2399999998","0","3372727.2399999998","0000-00-00 00:00:00","EST_BR.170919.000019","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.250919.000015","2019-09-25 08:48:01","Asuransi","MHFJW8EM9H2326008","1TRA249648","AD-9099-NA","CUST_BR.170919.000016","ABDA","","admin","1181818.1815999998","0","1181818.1815999998","0","0","0","1181818.1815999998","0","1181818.1815999998","2019-09-25 08:48:01","EST_BR.170919.000016","Buka");
INSERT INTO t_pkb VALUES("PKB_BR.250919.000016","2019-09-25 08:48:22","Asuransi","MHFJW8EM9H2326008","1TRA249648","AD-9099-NA","CUST_BR.170919.000016","","","admin","1181818.1779999998","0","1181818.1779999998","0","0","0","1181818.1779999998","0","1181818.1779999998","0000-00-00 00:00:00","EST_BR.250919.000031","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.250919.000017","2019-09-25 08:46:49","Asuransi","MHRRM1830EJ400292","R20A59423299","AD 8233 UA","CUST_BR.170919.000015","ABDA","","admin","3881818.139999999","0","3881818.139999999","0","0","0","3881818.139999999","0","3881818.139999999","0000-00-00 00:00:00","EST_BR.180919.000020","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.251019.000032","2019-10-25 14:53:42","Pribadi","MHRGK5860EJ406777","L15Z51012175","AD 9073 VU","CUST_BR.231019.000039","","","admin","409090.909","0","409090.909","0","0","0","409090.909","0","409090.909","0000-00-00 00:00:00","EST_BR.231019.000061","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.251119.000053","2019-11-25 14:14:10","Pribadi","MHKS6GJ6JJJ045619","3NRH261839","AD 9351 ST","CUST_BR.041119.000047","","","admin","4045454.5442","404545.45441999985","3640909.089779999","3671363.6363","0","3671363.6363","7716818.1805","404545.45441999985","7312272.726079999","0000-00-00 00:00:00","EST_BR.041119.000075","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.260919.000017","2019-09-26 08:15:43","Asuransi","MHKB3BA1JEK023277","ME00394","B 9705 NCD","CUST_BR.180919.000018","","","admin","659090.909","0","659090.909","0","0","0","659090.909","0","659090.909","0000-00-00 00:00:00","EST_BR.240919.000029","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.260919.000018","2019-09-30 11:51:32","Asuransi","MALBL51CMHM266798","G4LCGU602848","AD 8434 JM","CUST_BR.230919.000020","RAKSA","","admin","3772727.2724","377272.7272399999","3395454.5451599997","838181.8181","41909.090905","796272.727195","4610909.0905","419181.8181449999","4191727.2723549996","0000-00-00 00:00:00","EST_BR.230919.000024","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.260919.000019","2019-09-26 08:45:55","Asuransi","MHML0PU39EK164458","4D56CKX5371","B 9998 NCD","CUST_BR.130919.000009","MPMI","","admin","704545.4543999999","0","704545.4543999999","677272.7272","33863.63636","643409.09084","1381818.1815999998","33863.63636","1347954.54524","0000-00-00 00:00:00","EST_BR.130919.000012","Buka");
INSERT INTO t_pkb VALUES("PKB_BR.260919.000020","2019-09-26 09:07:09","Asuransi","MHML0PU39EK164458","4D56CKX5371","B 9998 NCD","CUST_BR.130919.000009","","","admin","704545.4543999999","0","704545.4543999999","677272.7272","33863.63636","643409.09084","1381818.1815999998","33863.63636","1347954.54524","0000-00-00 00:00:00","EST_BR.260919.000032","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.261019.000027","2019-10-26 08:16:31","Asuransi","MHKM5FA4JHK023595","2NRF584439","H 8732 LG","CUST_BR.130919.000009","MPMR","","admin","4678000","0","4678000","278300","0","278300","4956300","0","4956300","0000-00-00 00:00:00","EST_BR.161019.000054","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.261019.000028","2019-10-29 10:44:48","Asuransi","MHKM5EB2JJK008569","1NRF430361","AD 8849 ES","CUST_BR.180919.000018","MPM RENT","","admin","1965000","0","1965000","0","0","0","1965000","0","1965000","0000-00-00 00:00:00","EST_BR.211019.000060","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.261119.000054","2019-11-26 13:37:41","Pribadi","MHRDD1850KJ913536","L12B32356662","AD 9189 WS","CUST_BR.251119.000057","","4054","admin","227272.7272","0","227272.7272","0","0","0","227272.7272","0","227272.7272","0000-00-00 00:00:00","EST_BR.251119.000093","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.261119.000055","2019-11-26 15:47:28","Pribadi","MHRGE8860CJ207037","L15A7-4758079","B 1371 VMI","CUST_BR.261119.000060","","","admin","181818.1818","0","181818.1818","0","0","0","181818.1818","0","181818.1818","0000-00-00 00:00:00","EST_BR.261119.000101","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.270919.000021","2019-09-27 13:34:18","Pribadi","1C4HJWK5XEL123984","EL123984","B 535 NNM","CUST_BR.120919.000008","","","admin","227272.7272","0","227272.7272","0","0","0","227272.7272","0","227272.7272","0000-00-00 00:00:00","EST_BR.270919.000034","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.271119.000056","2019-11-27 09:24:36","Pribadi","JHMRB3863CC330315","K24Z21721278","AD 9035 WB","CUST_BR.171019.000035","","","admin","1136363.6363","0","1136363.6363","0","0","0","1136363.6363","0","1136363.6363","0000-00-00 00:00:00","EST_BR.171019.000055","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.271119.000057","2019-11-27 10:53:05","Asuransi","MHKM5EA3JGK013284","1NRF123379","AD 9398 OS","CUST_BR.180919.000018","MPMR","","admin","3690000","0","3690000","369050","0","369050","4059050","0","4059050","2019-11-27 10:53:05","EST_BR.141119.000085","Buka");
INSERT INTO t_pkb VALUES("PKB_BR.271119.000058","2019-11-27 11:03:25","Asuransi","MHKM5EA3JGK013284","1NRF123379","AD 9398 OS","CUST_BR.180919.000018","","","admin","3690000","0","3690000","369050","0","369050","4059050","0","4059050","0000-00-00 00:00:00","EST_BR.271119.000102","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.281019.000029","2019-10-28 10:05:52","Asuransi","MHRRU5870JJ701702","R18ZE1153555","AD 9020 YT","CUST_BR.191019.000036","RAKSA","","admin","4431818.1814","443181.81814","3988636.3632599995","0","0","0","4431818.1814","443181.81814","3988636.3632599995","2019-10-28 10:05:52","EST_BR.191019.000056","Buka");
INSERT INTO t_pkb VALUES("PKB_BR.281019.000030","2019-10-28 10:16:01","Asuransi","MHRRU5870JJ701702","R18ZE1153555","AD 9020 YT","CUST_BR.191019.000036","","","admin","4431818.1814","443181.81814","3988636.3632599995","0","0","0","4431818.1814","443181.81814","3988636.3632599995","0000-00-00 00:00:00","EST_BR.281019.000068","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.291019.000029","2019-10-29 13:56:02","Asuransi","MHRDD1850KJ914302","L12B32358620","AD 9234 AO","CUST_BR.241019.000041","PANFIC","","admin","4250000","510000","3740000","0","0","0","4250000","510000","3740000","0000-00-00 00:00:00","EST_BR.241019.000064","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.291019.000030","2019-10-29 15:42:42","Pribadi","MHHVB19046K918142","","B 1 BEH","CUST_BR.231019.000040","","","admin","2818181.8105","0","2818181.8105","0","0","0","2818181.8105","0","2818181.8105","0000-00-00 00:00:00","EST_BR.231019.000062","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.291119.000059","2019-11-29 08:36:27","Asuransi","MHKM5EA2JGJ011939","1NRF102098","H 8847 UZ","CUST_BR.180919.000018","MPMR","","admin","2140000","0","2140000","0","0","0","2140000","0","2140000","0000-00-00 00:00:00","EST_BR.251119.000098","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.291119.000060","2019-11-29 09:33:05","Asuransi","MHKM5EA3JHK071752","1NRF289885","B 1652 NRI","CUST_BR.180919.000018","MPMR","","admin","1960000","0","1960000","0","0","0","1960000","0","1960000","0000-00-00 00:00:00","EST_BR.251119.000094","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.291119.000061","2019-11-29 09:56:00","Asuransi","MHKM5EA2JGK008994","1NRF160311","AD 8944 OH","CUST_BR.180919.000018","MPMR","","admin","2140000","0","2140000","0","0","0","2140000","0","2140000","0000-00-00 00:00:00","EST_BR.251119.000096","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.291119.000062","2019-11-29 10:15:13","Asuransi","MHKM5EA2JGK009016","1NRF160459","H 8957 VZ","CUST_BR.180919.000018","MPMR","","admin","2625000","0","2625000","0","0","0","2625000","0","2625000","0000-00-00 00:00:00","EST_BR.251119.000097","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.291119.000063","2019-11-29 14:26:57","Pribadi","MHRRU1730HJ700850","L15Z6-1157592","K 9379 JK","CUST_BR.261119.000058","","","admin","727272.7272","63636.36363","663636.3635699999","0","0","0","727272.7272","63636.36363","663636.3635699999","0000-00-00 00:00:00","EST_BR.261119.000099","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.291119.000064","2019-11-29 15:20:24","Pribadi","MHRRU1850HJ606099","L15Z61132304","AD 9232 XA","CUST_BR.271119.000061","","","admin","136363.6363","0","136363.6363","0","0","0","136363.6363","0","136363.6363","0000-00-00 00:00:00","EST_BR.271119.000103","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.301019.000031","2019-10-31 11:19:53","Asuransi","MHRRU1850FJ404794","L15Z61005633","AD 9016 XT","CUST_BR.011019.000025","MAG","","admin","2975000","0","2975000","0","0","0","2975000","0","2975000","0000-00-00 00:00:00","EST_BR.011019.000040","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.301119.000065","2019-11-30 09:36:52","Pribadi","MHRDD1770GJ552867","L12B31494740","H 9400 Y","CUST_BR.231119.000056","","","admin","1727272.7271","172727.27271","1554545.45439","0","0","0","1727272.7271","172727.27271","1554545.45439","0000-00-00 00:00:00","EST_BR.231119.000092","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.301119.000066","2019-11-30 13:22:11","Pribadi","MHKG2CJ2J7K009402","","AB 1608 GE","CUST_BR.261119.000059","","","admin","545454.5454","0","545454.5454","0","0","0","545454.5454","0","545454.5454","0000-00-00 00:00:00","EST_BR.261119.000100","Tutup");
INSERT INTO t_pkb VALUES("PKB_BR.301119.000067","2019-11-30 13:26:39","Pribadi","MHRGE8860EJ301211","L15A77759928","AD 9290 ZS","CUST_BR.301119.000062","","","admin","500000","0","500000","0","0","0","500000","0","500000","0000-00-00 00:00:00","EST_BR.301119.000105","Tutup");



DROP TABLE t_pkb_jasa;

CREATE TABLE `t_pkb_jasa` (
  `id_pkb_jasa` varchar(50) NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `kategori` enum('NON','PAKET') NOT NULL,
  `no_polisi` varchar(50) NOT NULL,
  `fk_customer` varchar(50) NOT NULL,
  `total_gross_harga_jasa` double NOT NULL,
  `total_diskon_rupiah_jasa` double NOT NULL,
  `total_netto_harga_jasa` double NOT NULL,
  `tgl_batal` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status_pkb_jasa` enum('BUKA','TUTUP') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE t_pkb_jasa_detail;

CREATE TABLE `t_pkb_jasa_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_pkb_jasa` varchar(20) NOT NULL,
  `fk_jasa` varchar(20) DEFAULT NULL,
  `fk_paket_jasa` varchar(20) DEFAULT NULL,
  `harga_jual_jasa` double DEFAULT NULL,
  `diskon_jasa` float DEFAULT NULL,
  `harga_diskon_jasa` double DEFAULT NULL,
  `harga_jual_paket_jasa` double DEFAULT NULL,
  `diskon_paket_jasa` float DEFAULT NULL,
  `harga_diskon_paket_jasa` double DEFAULT NULL,
  `harga_total_pkb_jasa` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE t_pkb_panel_detail;

CREATE TABLE `t_pkb_panel_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_pkb` varchar(20) NOT NULL,
  `fk_panel` varchar(20) NOT NULL,
  `harga_jual_panel` double DEFAULT NULL,
  `diskon_panel` float NOT NULL,
  `harga_diskon_panel` double DEFAULT NULL,
  `harga_total_pkb_panel` double NOT NULL,
  `mark_panel` enum('0','1') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=655 DEFAULT CHARSET=latin1;

INSERT INTO t_pkb_panel_detail VALUES("1","PKB_BR.110919.000001","1020","550000","10","55000","495000","0");
INSERT INTO t_pkb_panel_detail VALUES("2","PKB_BR.110919.000001","1011","700000","10","70000","630000","");
INSERT INTO t_pkb_panel_detail VALUES("3","PKB_BR.110919.000001","1073","800000","10","80000","720000","0");
INSERT INTO t_pkb_panel_detail VALUES("4","PKB_BR.110919.000001","1022","600000","10","60000","540000","0");
INSERT INTO t_pkb_panel_detail VALUES("5","PKB_BR.110919.000001","1050","100000","10","10000","90000","0");
INSERT INTO t_pkb_panel_detail VALUES("6","PKB_BR.110919.000001","101","600000","10","60000","540000","0");
INSERT INTO t_pkb_panel_detail VALUES("7","PKB_BR.120919.000002","101","500000","12","60000","440000","0");
INSERT INTO t_pkb_panel_detail VALUES("8","PKB_BR.120919.000003","1076","590909","10","59090.9","531818.1","0");
INSERT INTO t_pkb_panel_detail VALUES("9","PKB_BR.120919.000003","1075","409090.9","10","40909.09","368181.81","0");
INSERT INTO t_pkb_panel_detail VALUES("10","PKB_BR.120919.000004","1075","500000","0","0","500000","0");
INSERT INTO t_pkb_panel_detail VALUES("11","PKB_BR.120919.000004","101","500000","0","0","500000","0");
INSERT INTO t_pkb_panel_detail VALUES("12","PKB_BR.120919.000004","1078","700000","0","0","700000","0");
INSERT INTO t_pkb_panel_detail VALUES("13","PKB_BR.120919.000004","1079","650000","0","0","650000","0");
INSERT INTO t_pkb_panel_detail VALUES("14","PKB_BR.120919.000004","1080","750000","0","0","750000","0");
INSERT INTO t_pkb_panel_detail VALUES("15","PKB_BR.120919.000004","1016","750000","0","0","750000","0");
INSERT INTO t_pkb_panel_detail VALUES("16","PKB_BR.120919.000004","1071","650000","0","0","650000","0");
INSERT INTO t_pkb_panel_detail VALUES("17","PKB_BR.120919.000004","1081","650000","0","0","650000","0");
INSERT INTO t_pkb_panel_detail VALUES("18","PKB_BR.130919.000005","1075","272727.2727","0","0","272727.2727","0");
INSERT INTO t_pkb_panel_detail VALUES("19","PKB_BR.130919.000005","1083","90909.0909","0","0","90909.0909","0");
INSERT INTO t_pkb_panel_detail VALUES("20","PKB_BR.130919.000005","1044","204545.4545","0","0","204545.4545","0");
INSERT INTO t_pkb_panel_detail VALUES("21","PKB_BR.130919.000005","1023","386363.6363","0","0","386363.6363","0");
INSERT INTO t_pkb_panel_detail VALUES("22","PKB_BR.130919.000005","1077","386363.6363","0","0","386363.6363","0");
INSERT INTO t_pkb_panel_detail VALUES("23","PKB_BR.130919.000005","1088","113636.3636","0","0","113636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("24","PKB_BR.130919.000005","1090","113636.3636","0","0","113636.3636","");
INSERT INTO t_pkb_panel_detail VALUES("25","PKB_BR.130919.000005","1082","386363.6363","0","0","386363.6363","1");
INSERT INTO t_pkb_panel_detail VALUES("26","PKB_BR.140919.000006","101","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("27","PKB_BR.140919.000006","1071","410000","0","0","410000","1");
INSERT INTO t_pkb_panel_detail VALUES("28","PKB_BR.140919.000006","1047","650000","0","0","650000","0");
INSERT INTO t_pkb_panel_detail VALUES("29","PKB_BR.140919.000006","1016","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("30","PKB_BR.140919.000006","1075","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("31","PKB_BR.140919.000006","1025","500000","0","0","500000","1");
INSERT INTO t_pkb_panel_detail VALUES("32","PKB_BR.140919.000006","1077","425000","0","0","425000","1");
INSERT INTO t_pkb_panel_detail VALUES("33","PKB_BR.140919.000006","1022","295000","0","0","295000","");
INSERT INTO t_pkb_panel_detail VALUES("34","PKB_BR.140919.000007","1025","590909.0909","0","0","590909.0909","0");
INSERT INTO t_pkb_panel_detail VALUES("35","PKB_BR.140919.000007","1023","318181.8181","0","0","318181.8181","");
INSERT INTO t_pkb_panel_detail VALUES("36","PKB_BR.140919.000007","1077","590909.0909","0","0","590909.0909","0");
INSERT INTO t_pkb_panel_detail VALUES("37","PKB_BR.140919.000007","1011","500000","0","0","500000","0");
INSERT INTO t_pkb_panel_detail VALUES("38","PKB_BR.170919.000007","1076","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_pkb_panel_detail VALUES("39","PKB_BR.170919.000007","1082","500000","10","50000","450000","");
INSERT INTO t_pkb_panel_detail VALUES("40","PKB_BR.170919.000007","101","454545.4545","10","45454.54545","409090.90905","");
INSERT INTO t_pkb_panel_detail VALUES("41","PKB_BR.170919.000007","1075","454545.45","10","45454.545","409090.905","");
INSERT INTO t_pkb_panel_detail VALUES("42","PKB_BR.170919.000007","1074","409090.9","10","40909.09","368181.81000000006","");
INSERT INTO t_pkb_panel_detail VALUES("43","PKB_BR.170919.000007","1035","136363.63","10","13636.363","122727.267","");
INSERT INTO t_pkb_panel_detail VALUES("44","PKB_BR.170919.000007","1073","590909.09","10","59090.909","531818.181","");
INSERT INTO t_pkb_panel_detail VALUES("45","PKB_BR.170919.000007","1016","590909.09","10","59090.909","531818.181","");
INSERT INTO t_pkb_panel_detail VALUES("46","PKB_BR.170919.000007","1086","227272.7272","10","22727.27272","204545.45448","");
INSERT INTO t_pkb_panel_detail VALUES("47","PKB_BR.170919.000007","1093","590909.0909","10","59090.90909","531818.18181","1");
INSERT INTO t_pkb_panel_detail VALUES("48","PKB_BR.170919.000007","1011","500000","10","50000","450000","1");
INSERT INTO t_pkb_panel_detail VALUES("49","PKB_BR.170919.000007","1085","227272.7272","10","22727.27272","204545.45448","1");
INSERT INTO t_pkb_panel_detail VALUES("50","PKB_BR.190919.000008","1016","636363.6363","0","0","636363.6363","");
INSERT INTO t_pkb_panel_detail VALUES("51","PKB_BR.190919.000008","1076","636363.6363","0","0","636363.6363","");
INSERT INTO t_pkb_panel_detail VALUES("52","PKB_BR.190919.000009","106","590909.0909","0","0","590909.0909","0");
INSERT INTO t_pkb_panel_detail VALUES("53","PKB_BR.190919.000009","1082","500000","0","0","500000","");
INSERT INTO t_pkb_panel_detail VALUES("54","PKB_BR.190919.000009","1041","90909.0909","0","0","90909.0909","");
INSERT INTO t_pkb_panel_detail VALUES("55","PKB_BR.190919.000009","1075","409090.9","0","0","409090.9","0");
INSERT INTO t_pkb_panel_detail VALUES("56","PKB_BR.190919.000009","101","409090.9","0","0","409090.9","0");
INSERT INTO t_pkb_panel_detail VALUES("57","PKB_BR.190919.000010","101","409090.9","0","0","409090.9","0");
INSERT INTO t_pkb_panel_detail VALUES("58","PKB_BR.190919.000010","1075","409090.9","0","0","409090.9","0");
INSERT INTO t_pkb_panel_detail VALUES("59","PKB_BR.190919.000010","106","636363.63","0","0","636363.63","0");
INSERT INTO t_pkb_panel_detail VALUES("60","PKB_BR.230919.000011","106","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_pkb_panel_detail VALUES("61","PKB_BR.230919.000011","101","454545.4545","10","45454.54545","409090.90905","");
INSERT INTO t_pkb_panel_detail VALUES("62","PKB_BR.230919.000011","1071","500000","10","50000","450000","");
INSERT INTO t_pkb_panel_detail VALUES("63","PKB_BR.230919.000011","1052","136363.6363","10","13636.36363","122727.27267","0");
INSERT INTO t_pkb_panel_detail VALUES("64","PKB_BR.230919.000011","1096","136363.6363","10","13636.36363","122727.27267","0");
INSERT INTO t_pkb_panel_detail VALUES("65","PKB_BR.230919.000011","1011","500000","10","50000","450000","0");
INSERT INTO t_pkb_panel_detail VALUES("66","PKB_BR.230919.000011","1037","272727.2727","10","27272.72727","245454.54543","");
INSERT INTO t_pkb_panel_detail VALUES("67","PKB_BR.230919.000011","1058","181818.1818","10","18181.81818","163636.36362","0");
INSERT INTO t_pkb_panel_detail VALUES("68","PKB_BR.230919.000011","1104","181818.1818","10","18181.81818","163636.36362","0");
INSERT INTO t_pkb_panel_detail VALUES("69","PKB_BR.230919.000011","1060","318181.8181","10","31818.18181","286363.63629","0");
INSERT INTO t_pkb_panel_detail VALUES("70","PKB_BR.230919.000011","105","272727.2727","10","27272.72727","245454.54542999997","0");
INSERT INTO t_pkb_panel_detail VALUES("71","PKB_BR.230919.000011","1053","272727.2727","10","27272.72727","245454.54542999997","0");
INSERT INTO t_pkb_panel_detail VALUES("72","PKB_BR.230919.000011","1072","500000","10","50000","450000","0");
INSERT INTO t_pkb_panel_detail VALUES("73","PKB_BR.230919.000011","1106","136363.6363","10","13636.36363","122727.27267","0");
INSERT INTO t_pkb_panel_detail VALUES("74","PKB_BR.230919.000011","1107","136363.6363","10","13636.36363","122727.27267","0");
INSERT INTO t_pkb_panel_detail VALUES("75","PKB_BR.230919.000011","1108","136363.6363","10","13636.36363","122727.27267","0");
INSERT INTO t_pkb_panel_detail VALUES("76","PKB_BR.240919.000012","1016","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_pkb_panel_detail VALUES("77","PKB_BR.240919.000008","101","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("78","PKB_BR.240919.000008","1092","100000","0","0","100000","0");
INSERT INTO t_pkb_panel_detail VALUES("79","PKB_BR.240919.000008","1081","150000","0","0","150000","0");
INSERT INTO t_pkb_panel_detail VALUES("80","PKB_BR.240919.000009","101","454545.45","0","0","454545.45","0");
INSERT INTO t_pkb_panel_detail VALUES("81","PKB_BR.240919.000009","1075","454545.45","0","0","454545.45","0");
INSERT INTO t_pkb_panel_detail VALUES("82","PKB_BR.240919.000010","1087","227272.7272","0","0","227272.7272","0");
INSERT INTO t_pkb_panel_detail VALUES("83","PKB_BR.240919.000010","1086","227272.7272","0","0","227272.7272","0");
INSERT INTO t_pkb_panel_detail VALUES("84","PKB_BR.240919.000010","1085","227272.7272","0","0","227272.7272","0");
INSERT INTO t_pkb_panel_detail VALUES("85","PKB_BR.240919.000010","1044","227272.72","0","0","227272.72","0");
INSERT INTO t_pkb_panel_detail VALUES("86","PKB_BR.240919.000011","101","450000","12","54000","396000","");
INSERT INTO t_pkb_panel_detail VALUES("87","PKB_BR.240919.000011","1075","450000","12","54000","396000","");
INSERT INTO t_pkb_panel_detail VALUES("88","PKB_BR.240919.000011","1011","550000","12","66000","484000","");
INSERT INTO t_pkb_panel_detail VALUES("89","PKB_BR.240919.000011","1073","650000","12","78000","572000","");
INSERT INTO t_pkb_panel_detail VALUES("90","PKB_BR.240919.000011","1016","650000","12","78000","572000","");
INSERT INTO t_pkb_panel_detail VALUES("91","PKB_BR.240919.000011","1023","550000","12","66000","484000","");
INSERT INTO t_pkb_panel_detail VALUES("92","PKB_BR.240919.000012","1075","727273","0","0","727273","0");
INSERT INTO t_pkb_panel_detail VALUES("93","PKB_BR.240919.000012","1075","727273","0","0","727273","0");
INSERT INTO t_pkb_panel_detail VALUES("94","PKB_BR.240919.000012","1075","727273","0","0","727273","0");
INSERT INTO t_pkb_panel_detail VALUES("95","PKB_BR.240919.000012","1075","727273","0","0","727273","0");
INSERT INTO t_pkb_panel_detail VALUES("96","PKB_BR.240919.000012","1075","727273","0","0","727273","0");
INSERT INTO t_pkb_panel_detail VALUES("97","PKB_BR.240919.000012","1075","727273","0","0","727273","0");
INSERT INTO t_pkb_panel_detail VALUES("98","PKB_BR.240919.000012","1075","727273","0","0","727273","0");
INSERT INTO t_pkb_panel_detail VALUES("99","PKB_BR.240919.000012","1075","727273","0","0","727273","0");
INSERT INTO t_pkb_panel_detail VALUES("100","PKB_BR.240919.000012","1075","727273","0","0","727273","0");
INSERT INTO t_pkb_panel_detail VALUES("101","PKB_BR.240919.000012","1075","727273","0","0","727273","0");
INSERT INTO t_pkb_panel_detail VALUES("102","PKB_BR.240919.000012","1075","727273","0","0","727273","0");
INSERT INTO t_pkb_panel_detail VALUES("103","PKB_BR.240919.000012","1082","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("104","PKB_BR.240919.000012","1076","363636.36","0","0","363636.36","1");
INSERT INTO t_pkb_panel_detail VALUES("105","PKB_BR.240919.000012","1093","363636.36","0","0","363636.36","1");
INSERT INTO t_pkb_panel_detail VALUES("106","PKB_BR.240919.000012","1075","272727.27","0","0","272727.27","0");
INSERT INTO t_pkb_panel_detail VALUES("107","PKB_BR.240919.000012","1023","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("108","PKB_BR.240919.000012","1016","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("109","PKB_BR.240919.000012","1022","254545.45","0","0","254545.45","1");
INSERT INTO t_pkb_panel_detail VALUES("110","PKB_BR.240919.000012","106","390909.09","0","0","390909.09","0");
INSERT INTO t_pkb_panel_detail VALUES("111","PKB_BR.240919.000012","101","272727.27","0","0","272727.27","0");
INSERT INTO t_pkb_panel_detail VALUES("112","PKB_BR.240919.000012","1011","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("113","PKB_BR.240919.000012","101","250000","0","0","250000","0");
INSERT INTO t_pkb_panel_detail VALUES("114","PKB_BR.240919.000012","1012","104545.45","0","0","104545.45","1");
INSERT INTO t_pkb_panel_detail VALUES("115","PKB_BR.240919.000012","109","318181.81","0","0","318181.81","0");
INSERT INTO t_pkb_panel_detail VALUES("116","PKB_BR.240919.000012","1059","90909.09","0","0","90909.09","0");
INSERT INTO t_pkb_panel_detail VALUES("117","PKB_BR.240919.000012","106","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("118","PKB_BR.240919.000012","1094","90909.09","0","0","90909.09","0");
INSERT INTO t_pkb_panel_detail VALUES("119","PKB_BR.240919.000012","1095","1136363.63","0","0","1136363.63","0");
INSERT INTO t_pkb_panel_detail VALUES("120","PKB_BR.240919.000012","1052","90909.09","0","0","90909.09","1");
INSERT INTO t_pkb_panel_detail VALUES("121","PKB_BR.240919.000012","1096","90909.09","0","0","90909.09","1");
INSERT INTO t_pkb_panel_detail VALUES("122","PKB_BR.240919.000012","1060","300000","0","0","300000","0");
INSERT INTO t_pkb_panel_detail VALUES("123","PKB_BR.240919.000012","1097","227272.72","0","0","227272.72","0");
INSERT INTO t_pkb_panel_detail VALUES("124","PKB_BR.240919.000012","1098","90909.09","0","0","90909.09","0");
INSERT INTO t_pkb_panel_detail VALUES("125","PKB_BR.240919.000012","1011","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("126","PKB_BR.240919.000012","1071","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("127","PKB_BR.240919.000012","1075","727273","0","0","727273","0");
INSERT INTO t_pkb_panel_detail VALUES("128","PKB_BR.240919.000012","1082","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("129","PKB_BR.240919.000012","1076","363636.36","0","0","363636.36","1");
INSERT INTO t_pkb_panel_detail VALUES("130","PKB_BR.240919.000012","1093","363636.36","0","0","363636.36","1");
INSERT INTO t_pkb_panel_detail VALUES("131","PKB_BR.240919.000012","1075","272727.27","0","0","272727.27","0");
INSERT INTO t_pkb_panel_detail VALUES("132","PKB_BR.240919.000012","1023","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("133","PKB_BR.240919.000012","1016","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("134","PKB_BR.240919.000012","1022","254545.45","0","0","254545.45","1");
INSERT INTO t_pkb_panel_detail VALUES("135","PKB_BR.240919.000012","106","390909.09","0","0","390909.09","0");
INSERT INTO t_pkb_panel_detail VALUES("136","PKB_BR.240919.000012","101","272727.27","0","0","272727.27","0");
INSERT INTO t_pkb_panel_detail VALUES("137","PKB_BR.240919.000012","1011","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("138","PKB_BR.240919.000012","1075","727273","0","0","727273","0");
INSERT INTO t_pkb_panel_detail VALUES("139","PKB_BR.240919.000012","1075","727273","0","0","727273","0");
INSERT INTO t_pkb_panel_detail VALUES("140","PKB_BR.240919.000012","1082","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("141","PKB_BR.240919.000012","1076","363636.36","0","0","363636.36","1");
INSERT INTO t_pkb_panel_detail VALUES("142","PKB_BR.240919.000012","1093","363636.36","0","0","363636.36","1");
INSERT INTO t_pkb_panel_detail VALUES("143","PKB_BR.240919.000012","1075","272727.27","0","0","272727.27","0");
INSERT INTO t_pkb_panel_detail VALUES("144","PKB_BR.240919.000012","1023","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("145","PKB_BR.240919.000012","1016","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("146","PKB_BR.240919.000012","1022","254545.45","0","0","254545.45","1");
INSERT INTO t_pkb_panel_detail VALUES("147","PKB_BR.240919.000012","106","390909.09","0","0","390909.09","0");
INSERT INTO t_pkb_panel_detail VALUES("148","PKB_BR.240919.000012","101","272727.27","0","0","272727.27","0");
INSERT INTO t_pkb_panel_detail VALUES("149","PKB_BR.240919.000012","1011","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("150","PKB_BR.240919.000012","1075","727273","0","0","727273","0");
INSERT INTO t_pkb_panel_detail VALUES("151","PKB_BR.240919.000012","1075","727273","0","0","727273","0");
INSERT INTO t_pkb_panel_detail VALUES("152","PKB_BR.240919.000012","1075","727273","0","0","727273","0");
INSERT INTO t_pkb_panel_detail VALUES("153","PKB_BR.240919.000012","1082","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("154","PKB_BR.240919.000012","1076","363636.36","0","0","363636.36","1");
INSERT INTO t_pkb_panel_detail VALUES("155","PKB_BR.240919.000012","1093","363636.36","0","0","363636.36","1");
INSERT INTO t_pkb_panel_detail VALUES("156","PKB_BR.240919.000012","1075","272727.27","0","0","272727.27","0");
INSERT INTO t_pkb_panel_detail VALUES("157","PKB_BR.240919.000012","1023","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("158","PKB_BR.240919.000012","1016","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("159","PKB_BR.240919.000012","1022","254545.45","0","0","254545.45","1");
INSERT INTO t_pkb_panel_detail VALUES("160","PKB_BR.240919.000012","106","390909.09","0","0","390909.09","0");
INSERT INTO t_pkb_panel_detail VALUES("161","PKB_BR.240919.000012","101","272727.27","0","0","272727.27","0");
INSERT INTO t_pkb_panel_detail VALUES("162","PKB_BR.240919.000012","1011","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("163","PKB_BR.240919.000012","1075","318181.8181","0","0","318181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("164","PKB_BR.240919.000012","1023","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("165","PKB_BR.240919.000012","1016","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("166","PKB_BR.240919.000012","1044","136363.6363","0","0","136363.6363","0");
INSERT INTO t_pkb_panel_detail VALUES("167","PKB_BR.240919.000012","1075","318181.8181","0","0","318181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("168","PKB_BR.240919.000012","1023","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("169","PKB_BR.240919.000012","1016","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("170","PKB_BR.240919.000012","1044","136363.6363","0","0","136363.6363","0");
INSERT INTO t_pkb_panel_detail VALUES("171","PKB_BR.240919.000012","1075","318181.8181","0","0","318181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("172","PKB_BR.240919.000012","1023","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("173","PKB_BR.240919.000012","1016","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("174","PKB_BR.240919.000012","1044","136363.6363","0","0","136363.6363","0");
INSERT INTO t_pkb_panel_detail VALUES("175","PKB_BR.240919.000012","1075","318181.8181","0","0","318181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("176","PKB_BR.240919.000012","1023","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("177","PKB_BR.240919.000012","1016","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("178","PKB_BR.240919.000012","1044","136363.6363","0","0","136363.6363","0");
INSERT INTO t_pkb_panel_detail VALUES("179","PKB_BR.240919.000012","1075","318181.8181","0","0","318181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("180","PKB_BR.240919.000012","1023","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("181","PKB_BR.240919.000012","1016","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("182","PKB_BR.240919.000012","1044","136363.6363","0","0","136363.6363","0");
INSERT INTO t_pkb_panel_detail VALUES("183","PKB_BR.240919.000012","1075","318181.8181","0","0","318181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("184","PKB_BR.240919.000012","1023","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("185","PKB_BR.240919.000012","1016","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("186","PKB_BR.240919.000012","1044","136363.6363","0","0","136363.6363","0");
INSERT INTO t_pkb_panel_detail VALUES("187","PKB_BR.240919.000012","1075","318181.8181","0","0","318181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("188","PKB_BR.240919.000012","1023","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("189","PKB_BR.240919.000012","1016","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("190","PKB_BR.240919.000012","1044","136363.6363","0","0","136363.6363","0");
INSERT INTO t_pkb_panel_detail VALUES("191","PKB_BR.240919.000012","1075","318181.8181","0","0","318181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("192","PKB_BR.240919.000012","1023","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("193","PKB_BR.240919.000012","1016","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("194","PKB_BR.240919.000012","1044","136363.6363","0","0","136363.6363","0");
INSERT INTO t_pkb_panel_detail VALUES("195","PKB_BR.240919.000012","1075","318181.8181","0","0","318181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("196","PKB_BR.240919.000012","1023","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("197","PKB_BR.240919.000012","1016","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("198","PKB_BR.240919.000012","1044","136363.6363","0","0","136363.6363","0");
INSERT INTO t_pkb_panel_detail VALUES("199","PKB_BR.240919.000012","1075","318181.8181","0","0","318181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("200","PKB_BR.240919.000012","1023","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("201","PKB_BR.240919.000012","1016","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("202","PKB_BR.240919.000012","1044","136363.6363","0","0","136363.6363","0");
INSERT INTO t_pkb_panel_detail VALUES("203","PKB_BR.240919.000012","101","272727.2727","0","0","272727.2727","0");
INSERT INTO t_pkb_panel_detail VALUES("204","PKB_BR.240919.000012","1071","386363.6363","0","0","386363.6363","0");
INSERT INTO t_pkb_panel_detail VALUES("205","PKB_BR.250919.000012","1075","727273","0","0","727273","0");
INSERT INTO t_pkb_panel_detail VALUES("206","PKB_BR.250919.000013","1075","318181.8181","0","0","318181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("207","PKB_BR.250919.000013","1023","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("208","PKB_BR.250919.000013","1016","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("209","PKB_BR.250919.000013","1044","136363.6363","0","0","136363.6363","0");
INSERT INTO t_pkb_panel_detail VALUES("210","PKB_BR.250919.000014","1082","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("211","PKB_BR.250919.000014","1076","363636.36","0","0","363636.36","1");
INSERT INTO t_pkb_panel_detail VALUES("212","PKB_BR.250919.000014","1093","363636.36","0","0","363636.36","1");
INSERT INTO t_pkb_panel_detail VALUES("213","PKB_BR.250919.000014","1075","272727.27","0","0","272727.27","0");
INSERT INTO t_pkb_panel_detail VALUES("214","PKB_BR.250919.000014","1023","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("215","PKB_BR.250919.000014","1016","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("216","PKB_BR.250919.000014","1022","254545.45","0","0","254545.45","1");
INSERT INTO t_pkb_panel_detail VALUES("217","PKB_BR.250919.000014","106","390909.09","0","0","390909.09","0");
INSERT INTO t_pkb_panel_detail VALUES("218","PKB_BR.250919.000014","101","272727.27","0","0","272727.27","0");
INSERT INTO t_pkb_panel_detail VALUES("219","PKB_BR.250919.000014","1011","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("220","PKB_BR.250919.000015","1075","318181.8181","0","0","318181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("221","PKB_BR.250919.000015","1023","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("222","PKB_BR.250919.000015","1016","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("223","PKB_BR.250919.000015","1044","136363.6363","0","0","136363.6363","0");
INSERT INTO t_pkb_panel_detail VALUES("224","PKB_BR.250919.000016","1075","318181.8181","0","0","318181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("225","PKB_BR.250919.000016","1023","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("226","PKB_BR.250919.000016","1016","363636.36","0","0","363636.36","1");
INSERT INTO t_pkb_panel_detail VALUES("227","PKB_BR.250919.000016","1044","136363.6363","0","0","136363.6363","0");
INSERT INTO t_pkb_panel_detail VALUES("228","PKB_BR.250919.000017","101","250000","0","0","250000","0");
INSERT INTO t_pkb_panel_detail VALUES("229","PKB_BR.250919.000017","1012","104545.45","0","0","104545.45","1");
INSERT INTO t_pkb_panel_detail VALUES("230","PKB_BR.250919.000017","109","318181.81","0","0","318181.81","0");
INSERT INTO t_pkb_panel_detail VALUES("231","PKB_BR.250919.000017","1059","90909.09","0","0","90909.09","0");
INSERT INTO t_pkb_panel_detail VALUES("232","PKB_BR.250919.000017","106","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("233","PKB_BR.250919.000017","1094","90909.09","0","0","90909.09","0");
INSERT INTO t_pkb_panel_detail VALUES("234","PKB_BR.250919.000017","1095","1136363.63","0","0","1136363.63","0");
INSERT INTO t_pkb_panel_detail VALUES("235","PKB_BR.250919.000017","1052","90909.09","0","0","90909.09","1");
INSERT INTO t_pkb_panel_detail VALUES("236","PKB_BR.250919.000017","1096","90909.09","0","0","90909.09","1");
INSERT INTO t_pkb_panel_detail VALUES("237","PKB_BR.250919.000017","1060","300000","0","0","300000","0");
INSERT INTO t_pkb_panel_detail VALUES("238","PKB_BR.250919.000017","1097","227272.72","0","0","227272.72","0");
INSERT INTO t_pkb_panel_detail VALUES("239","PKB_BR.250919.000017","1098","90909.09","0","0","90909.09","0");
INSERT INTO t_pkb_panel_detail VALUES("240","PKB_BR.250919.000017","1011","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("241","PKB_BR.250919.000017","1071","363636.36","0","0","363636.36","0");
INSERT INTO t_pkb_panel_detail VALUES("242","PKB_BR.250919.000017","101","272727.2727","0","0","272727.2727","0");
INSERT INTO t_pkb_panel_detail VALUES("243","PKB_BR.250919.000017","1071","386363.6363","0","0","386363.6363","0");
INSERT INTO t_pkb_panel_detail VALUES("244","PKB_BR.250919.000017","101","272727.2727","0","0","272727.2727","0");
INSERT INTO t_pkb_panel_detail VALUES("245","PKB_BR.250919.000017","1071","386363.6363","0","0","386363.6363","0");
INSERT INTO t_pkb_panel_detail VALUES("246","PKB_BR.250919.000017","101","409090.909","10","40909.0909","368181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("247","PKB_BR.250919.000017","1071","500000","10","50000","450000","1");
INSERT INTO t_pkb_panel_detail VALUES("248","PKB_BR.250919.000017","1019","818181.8181","10","81818.18181","736363.63629","0");
INSERT INTO t_pkb_panel_detail VALUES("249","PKB_BR.250919.000017","1067","454545.4545","10","45454.54545","409090.90905","0");
INSERT INTO t_pkb_panel_detail VALUES("250","PKB_BR.250919.000017","1075","409090.909","10","40909.0909","368181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("251","PKB_BR.250919.000017","1023","500000","10","50000","450000","1");
INSERT INTO t_pkb_panel_detail VALUES("252","PKB_BR.250919.000017","1016","590909.0909","10","59090.90909","531818.18181","0");
INSERT INTO t_pkb_panel_detail VALUES("253","PKB_BR.250919.000017","1050","90909.0909","10","9090.90909","81818.18181","0");
INSERT INTO t_pkb_panel_detail VALUES("254","PKB_BR.250919.000017","101","409090.909","10","40909.0909","368181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("255","PKB_BR.250919.000017","1071","500000","10","50000","450000","1");
INSERT INTO t_pkb_panel_detail VALUES("256","PKB_BR.250919.000017","1019","818181.8181","10","81818.18181","736363.63629","0");
INSERT INTO t_pkb_panel_detail VALUES("257","PKB_BR.250919.000017","1067","454545.4545","10","45454.54545","409090.90905","0");
INSERT INTO t_pkb_panel_detail VALUES("258","PKB_BR.250919.000017","1075","409090.909","10","40909.0909","368181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("259","PKB_BR.250919.000017","1023","500000","10","50000","450000","1");
INSERT INTO t_pkb_panel_detail VALUES("260","PKB_BR.250919.000017","1016","590909.0909","10","59090.90909","531818.18181","0");
INSERT INTO t_pkb_panel_detail VALUES("261","PKB_BR.250919.000017","1050","90909.0909","10","9090.90909","81818.18181","0");
INSERT INTO t_pkb_panel_detail VALUES("262","PKB_BR.250919.000017","101","409090.909","10","40909.0909","368181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("263","PKB_BR.250919.000017","1071","500000","10","50000","450000","1");
INSERT INTO t_pkb_panel_detail VALUES("264","PKB_BR.250919.000017","1019","818181.8181","10","81818.18181","736363.63629","0");
INSERT INTO t_pkb_panel_detail VALUES("265","PKB_BR.250919.000017","1067","454545.4545","10","45454.54545","409090.90905","0");
INSERT INTO t_pkb_panel_detail VALUES("266","PKB_BR.250919.000017","1075","409090.909","10","40909.0909","368181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("267","PKB_BR.250919.000017","1023","500000","10","50000","450000","1");
INSERT INTO t_pkb_panel_detail VALUES("268","PKB_BR.250919.000017","1016","590909.0909","10","59090.90909","531818.18181","0");
INSERT INTO t_pkb_panel_detail VALUES("269","PKB_BR.250919.000017","1050","90909.0909","10","9090.90909","81818.18181","0");
INSERT INTO t_pkb_panel_detail VALUES("270","PKB_BR.250919.000017","101","272727.2727","0","0","272727.2727","");
INSERT INTO t_pkb_panel_detail VALUES("271","PKB_BR.250919.000017","1016","386363.6363","0","0","386363.6363","");
INSERT INTO t_pkb_panel_detail VALUES("272","PKB_BR.250919.000017","1091","45454.5454","0","0","45454.5454","");
INSERT INTO t_pkb_panel_detail VALUES("273","PKB_BR.260919.000017","101","272727.2727","0","0","272727.2727","0");
INSERT INTO t_pkb_panel_detail VALUES("274","PKB_BR.260919.000017","1071","386363.6363","0","0","386363.6363","0");
INSERT INTO t_pkb_panel_detail VALUES("275","PKB_BR.260919.000018","101","409090.909","10","40909.0909","368181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("276","PKB_BR.260919.000018","1071","500000","10","50000","450000","1");
INSERT INTO t_pkb_panel_detail VALUES("277","PKB_BR.260919.000018","1019","818181.8181","10","81818.18181","736363.63629","0");
INSERT INTO t_pkb_panel_detail VALUES("278","PKB_BR.260919.000018","1067","454545.4545","10","45454.54545","409090.90905","0");
INSERT INTO t_pkb_panel_detail VALUES("279","PKB_BR.260919.000018","1075","409090.909","10","40909.0909","368181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("280","PKB_BR.260919.000018","1023","500000","10","50000","450000","1");
INSERT INTO t_pkb_panel_detail VALUES("281","PKB_BR.260919.000018","1016","590909.0909","10","59090.90909","531818.18181","0");
INSERT INTO t_pkb_panel_detail VALUES("282","PKB_BR.260919.000018","1050","90909.0909","10","9090.90909","81818.18181","0");
INSERT INTO t_pkb_panel_detail VALUES("283","PKB_BR.260919.000019","101","272727.2727","0","0","272727.2727","");
INSERT INTO t_pkb_panel_detail VALUES("284","PKB_BR.260919.000019","1016","386363.6363","0","0","386363.6363","");
INSERT INTO t_pkb_panel_detail VALUES("285","PKB_BR.260919.000019","1091","45454.5454","0","0","45454.5454","");
INSERT INTO t_pkb_panel_detail VALUES("286","PKB_BR.260919.000020","1091","45454.5454","0","0","45454.5454","0");
INSERT INTO t_pkb_panel_detail VALUES("287","PKB_BR.260919.000020","101","272727.2727","0","0","272727.2727","0");
INSERT INTO t_pkb_panel_detail VALUES("288","PKB_BR.260919.000020","1093","386363.6363","0","0","386363.6363","0");
INSERT INTO t_pkb_panel_detail VALUES("289","PKB_BR.270919.000021","1087","227272.7272","0","0","227272.7272","0");
INSERT INTO t_pkb_panel_detail VALUES("290","PKB_BR.021019.000019","101","409090.909","10","40909.0909","368181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("291","PKB_BR.021019.000019","1075","409090.909","10","40909.0909","368181.8181","");
INSERT INTO t_pkb_panel_detail VALUES("292","PKB_BR.021019.000019","1071","500000","10","50000","450000","0");
INSERT INTO t_pkb_panel_detail VALUES("293","PKB_BR.021019.000019","106","590909.0909","10","59090.90909","531818.18181","1");
INSERT INTO t_pkb_panel_detail VALUES("294","PKB_BR.021019.000019","1023","500000","10","50000","450000","0");
INSERT INTO t_pkb_panel_detail VALUES("295","PKB_BR.021019.000019","1025","590909.0909","10","59090.90909","531818.18181","1");
INSERT INTO t_pkb_panel_detail VALUES("296","PKB_BR.021019.000019","1093","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_pkb_panel_detail VALUES("297","PKB_BR.021019.000019","1109","272727.2727","10","27272.72727","245454.54543","0");
INSERT INTO t_pkb_panel_detail VALUES("298","PKB_BR.021019.000019","1110","227272.7272","10","22727.27272","204545.45448","0");
INSERT INTO t_pkb_panel_detail VALUES("299","PKB_BR.021019.000019","1102","136363.6363","10","13636.36363","122727.27267","0");
INSERT INTO t_pkb_panel_detail VALUES("300","PKB_BR.021019.000020","101","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("301","PKB_BR.021019.000020","1093","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("302","PKB_BR.021019.000020","1076","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("303","PKB_BR.021019.000020","1074","295000","0","0","295000","");
INSERT INTO t_pkb_panel_detail VALUES("304","PKB_BR.021019.000020","1077","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("305","PKB_BR.021019.000020","1011","410000","0","0","410000","0");
INSERT INTO t_pkb_panel_detail VALUES("306","PKB_BR.021019.000020","1022","295000","0","0","295000","1");
INSERT INTO t_pkb_panel_detail VALUES("307","PKB_BR.021019.000020","106","455000","0","0","455000","1");
INSERT INTO t_pkb_panel_detail VALUES("308","PKB_BR.021019.000020","1075","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("309","PKB_BR.051019.000021","101","454545.4545","0","0","454545.4545","0");
INSERT INTO t_pkb_panel_detail VALUES("310","PKB_BR.071019.000022","101","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("311","PKB_BR.071019.000022","1075","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("312","PKB_BR.071019.000022","1093","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("313","PKB_BR.071019.000022","1076","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("314","PKB_BR.071019.000022","1082","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("315","PKB_BR.071019.000022","1022","295000","0","0","295000","0");
INSERT INTO t_pkb_panel_detail VALUES("316","PKB_BR.071019.000022","1077","425000","0","0","425000","1");
INSERT INTO t_pkb_panel_detail VALUES("317","PKB_BR.071019.000022","1089","97000","0","0","97000","");
INSERT INTO t_pkb_panel_detail VALUES("318","PKB_BR.071019.000022","1041","97000","0","0","97000","");
INSERT INTO t_pkb_panel_detail VALUES("319","PKB_BR.081019.000022","1093","636363.6363","0","0","636363.6363","");
INSERT INTO t_pkb_panel_detail VALUES("320","PKB_BR.081019.000022","1076","636363.6363","0","0","636363.6363","");
INSERT INTO t_pkb_panel_detail VALUES("321","PKB_BR.111019.000021","1082","545454.5454","10","54545.45454","490909.09085999994","");
INSERT INTO t_pkb_panel_detail VALUES("322","PKB_BR.111019.000021","1071","545454.5454","10","54545.45454","490909.09085999994","");
INSERT INTO t_pkb_panel_detail VALUES("323","PKB_BR.111019.000021","101","500000","10","50000","450000","");
INSERT INTO t_pkb_panel_detail VALUES("324","PKB_BR.111019.000021","1117","22727.2727","10","2272.72727","20454.54543","");
INSERT INTO t_pkb_panel_detail VALUES("325","PKB_BR.121019.000022","1075","500000","10","50000","450000","");
INSERT INTO t_pkb_panel_detail VALUES("326","PKB_BR.121019.000022","1025","650000","10","65000","585000","");
INSERT INTO t_pkb_panel_detail VALUES("327","PKB_BR.121019.000022","1116","350000","10","35000","315000","");
INSERT INTO t_pkb_panel_detail VALUES("328","PKB_BR.121019.000023","101","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("329","PKB_BR.121019.000023","1075","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("330","PKB_BR.121019.000023","1076","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("331","PKB_BR.121019.000023","1082","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("332","PKB_BR.121019.000023","1112","90000","0","0","90000","0");
INSERT INTO t_pkb_panel_detail VALUES("333","PKB_BR.121019.000023","1011","410000","0","0","410000","0");
INSERT INTO t_pkb_panel_detail VALUES("334","PKB_BR.121019.000024","101","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("335","PKB_BR.121019.000024","1075","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("336","PKB_BR.121019.000024","1076","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("337","PKB_BR.121019.000024","1082","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("338","PKB_BR.121019.000024","1112","90000","0","0","90000","0");
INSERT INTO t_pkb_panel_detail VALUES("339","PKB_BR.121019.000024","1011","410000","0","0","410000","0");
INSERT INTO t_pkb_panel_detail VALUES("340","PKB_BR.121019.000025","101","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("341","PKB_BR.121019.000025","1075","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("342","PKB_BR.121019.000025","1076","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("343","PKB_BR.121019.000025","1082","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("344","PKB_BR.121019.000025","1112","90000","0","0","90000","0");
INSERT INTO t_pkb_panel_detail VALUES("345","PKB_BR.121019.000025","1011","410000","0","0","410000","1");
INSERT INTO t_pkb_panel_detail VALUES("346","PKB_BR.141019.000023","1075","272727.2727","0","0","272727.2727","0");
INSERT INTO t_pkb_panel_detail VALUES("347","PKB_BR.141019.000023","1102","113636.3636","0","0","113636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("348","PKB_BR.141019.000023","1074","227272.7272","0","0","227272.7272","0");
INSERT INTO t_pkb_panel_detail VALUES("349","PKB_BR.141019.000023","1076","386363.6363","0","0","386363.6363","0");
INSERT INTO t_pkb_panel_detail VALUES("350","PKB_BR.141019.000023","1082","386363.6363","0","0","386363.6363","0");
INSERT INTO t_pkb_panel_detail VALUES("351","PKB_BR.151019.000024","1082","500000","0","0","500000","0");
INSERT INTO t_pkb_panel_detail VALUES("352","PKB_BR.151019.000024","1076","590909.0909","0","0","590909.0909","0");
INSERT INTO t_pkb_panel_detail VALUES("353","PKB_BR.171019.000025","1075","545454.5454","0","0","545454.5454","");
INSERT INTO t_pkb_panel_detail VALUES("354","PKB_BR.181019.000026","101","454545.4545","0","0","454545.4545","0");
INSERT INTO t_pkb_panel_detail VALUES("355","PKB_BR.181019.000026","1109","227272.7272","0","0","227272.7272","");
INSERT INTO t_pkb_panel_detail VALUES("356","PKB_BR.181019.000026","1071","500000","0","0","500000","0");
INSERT INTO t_pkb_panel_detail VALUES("357","PKB_BR.181019.000027","1075","409090.909","0","0","409090.909","0");
INSERT INTO t_pkb_panel_detail VALUES("358","PKB_BR.181019.000027","1082","500000","0","0","500000","0");
INSERT INTO t_pkb_panel_detail VALUES("359","PKB_BR.211019.000025","101","272727.2727","0","0","272727.2727","");
INSERT INTO t_pkb_panel_detail VALUES("360","PKB_BR.211019.000025","1011","386363.6363","0","0","386363.6363","");
INSERT INTO t_pkb_panel_detail VALUES("361","PKB_BR.211019.000025","1013","181818.1818","0","0","181818.1818","");
INSERT INTO t_pkb_panel_detail VALUES("362","PKB_BR.211019.000025","1073","386363.6363","0","0","386363.6363","");
INSERT INTO t_pkb_panel_detail VALUES("363","PKB_BR.211019.000025","1067","227272.7272","0","0","227272.7272","");
INSERT INTO t_pkb_panel_detail VALUES("364","PKB_BR.211019.000025","1045","68181.8181","0","0","68181.8181","");
INSERT INTO t_pkb_panel_detail VALUES("365","PKB_BR.211019.000025","1077","386363.6363","0","0","386363.6363","");
INSERT INTO t_pkb_panel_detail VALUES("366","PKB_BR.211019.000025","1100","68181.8181","0","0","68181.8181","");
INSERT INTO t_pkb_panel_detail VALUES("367","PKB_BR.211019.000025","1023","386363.6363","0","0","386363.6363","");
INSERT INTO t_pkb_panel_detail VALUES("368","PKB_BR.211019.000025","1103","65454.5454","0","0","65454.5454","");
INSERT INTO t_pkb_panel_detail VALUES("369","PKB_BR.211019.000025","1075","272727.2727","0","0","272727.2727","");
INSERT INTO t_pkb_panel_detail VALUES("370","PKB_BR.211019.000025","1102","136363.6363","0","0","136363.6363","");
INSERT INTO t_pkb_panel_detail VALUES("371","PKB_BR.211019.000025","1025","409090.909","0","0","409090.909","");
INSERT INTO t_pkb_panel_detail VALUES("372","PKB_BR.211019.000025","1044","204545.4545","0","0","204545.4545","");
INSERT INTO t_pkb_panel_detail VALUES("373","PKB_BR.211019.000025","1076","386363.6363","0","0","386363.6363","");
INSERT INTO t_pkb_panel_detail VALUES("374","PKB_BR.211019.000025","1082","386363.6363","0","0","386363.6363","");
INSERT INTO t_pkb_panel_detail VALUES("375","PKB_BR.211019.000025","1074","227272.7272","0","0","227272.7272","");
INSERT INTO t_pkb_panel_detail VALUES("376","PKB_BR.211019.000025","1047","272727.2727","0","0","272727.2727","0");
INSERT INTO t_pkb_panel_detail VALUES("377","PKB_BR.211019.000026","106","590909.0909","0","0","590909.0909","0");
INSERT INTO t_pkb_panel_detail VALUES("378","PKB_BR.211019.000027","1125","1363636.3636","0","0","1363636.3636","");
INSERT INTO t_pkb_panel_detail VALUES("379","PKB_BR.211019.000027","1076","363636.3636","0","0","363636.3636","1");
INSERT INTO t_pkb_panel_detail VALUES("380","PKB_BR.211019.000027","1019","1590909.0909","0","0","1590909.0909","");
INSERT INTO t_pkb_panel_detail VALUES("381","PKB_BR.211019.000027","1017","363636.3636","0","0","363636.3636","1");
INSERT INTO t_pkb_panel_detail VALUES("382","PKB_BR.221019.000028","1076","681818.1818","0","0","681818.1818","");
INSERT INTO t_pkb_panel_detail VALUES("383","PKB_BR.221019.000028","1041","136363.6363","0","0","136363.6363","0");
INSERT INTO t_pkb_panel_detail VALUES("384","PKB_BR.241019.000029","1071","500000","10","50000","450000","");
INSERT INTO t_pkb_panel_detail VALUES("385","PKB_BR.241019.000029","101","454545.4545","10","45454.54545","409090.90905","");
INSERT INTO t_pkb_panel_detail VALUES("386","PKB_BR.241019.000029","1011","500000","10","50000","450000","");
INSERT INTO t_pkb_panel_detail VALUES("387","PKB_BR.241019.000029","1073","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_pkb_panel_detail VALUES("388","PKB_BR.241019.000029","1016","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_pkb_panel_detail VALUES("389","PKB_BR.241019.000029","1022","409090.909","10","40909.0909","368181.8181","");
INSERT INTO t_pkb_panel_detail VALUES("390","PKB_BR.241019.000029","1023","500000","10","50000","450000","");
INSERT INTO t_pkb_panel_detail VALUES("391","PKB_BR.241019.000029","1044","227272.72","10","22727.272","204545.448","");
INSERT INTO t_pkb_panel_detail VALUES("392","PKB_BR.241019.000029","1093","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_pkb_panel_detail VALUES("393","PKB_BR.241019.000029","1076","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_pkb_panel_detail VALUES("394","PKB_BR.241019.000029","1082","500000","10","50000","450000","");
INSERT INTO t_pkb_panel_detail VALUES("395","PKB_BR.241019.000029","1074","409090.909","10","40909.0909","368181.8181","");
INSERT INTO t_pkb_panel_detail VALUES("396","PKB_BR.241019.000029","1085","227272.7272","10","22727.27272","204545.45448","");
INSERT INTO t_pkb_panel_detail VALUES("397","PKB_BR.241019.000029","1086","227272.7272","10","22727.27272","204545.45448","");
INSERT INTO t_pkb_panel_detail VALUES("398","PKB_BR.241019.000030","1071","500000","10","50000","450000","");
INSERT INTO t_pkb_panel_detail VALUES("399","PKB_BR.241019.000030","101","454545.4545","10","45454.54545","409090.90905","");
INSERT INTO t_pkb_panel_detail VALUES("400","PKB_BR.241019.000030","1011","500000","10","50000","450000","0");
INSERT INTO t_pkb_panel_detail VALUES("401","PKB_BR.241019.000030","1073","590909.0909","10","59090.90909","531818.18181","0");
INSERT INTO t_pkb_panel_detail VALUES("402","PKB_BR.241019.000030","1016","590909.0909","10","59090.90909","531818.18181","0");
INSERT INTO t_pkb_panel_detail VALUES("403","PKB_BR.241019.000030","1022","409090.909","10","40909.0909","368181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("404","PKB_BR.241019.000030","1023","500000","10","50000","450000","");
INSERT INTO t_pkb_panel_detail VALUES("405","PKB_BR.241019.000030","1085","227272.7272","10","22727.27272","204545.45448","");
INSERT INTO t_pkb_panel_detail VALUES("406","PKB_BR.241019.000030","1044","227272.72","10","22727.272","204545.448","");
INSERT INTO t_pkb_panel_detail VALUES("407","PKB_BR.241019.000030","1093","590909.0909","10","59090.90909","531818.18181","0");
INSERT INTO t_pkb_panel_detail VALUES("408","PKB_BR.241019.000030","1076","590909.0909","10","59090.90909","531818.18181","0");
INSERT INTO t_pkb_panel_detail VALUES("409","PKB_BR.241019.000030","1082","500000","10","50000","450000","0");
INSERT INTO t_pkb_panel_detail VALUES("410","PKB_BR.241019.000030","1074","409090.909","10","40909.0909","368181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("411","PKB_BR.241019.000030","1086","227272.7272","10","22727.27272","204545.45448","");
INSERT INTO t_pkb_panel_detail VALUES("412","PKB_BR.241019.000031","1071","500000","10","50000","450000","0");
INSERT INTO t_pkb_panel_detail VALUES("413","PKB_BR.241019.000031","101","454545.4545","10","45454.54545","409090.90905","0");
INSERT INTO t_pkb_panel_detail VALUES("414","PKB_BR.241019.000031","1011","500000","10","50000","450000","");
INSERT INTO t_pkb_panel_detail VALUES("415","PKB_BR.241019.000031","1073","590909.0909","10","59090.90909","531818.18181","0");
INSERT INTO t_pkb_panel_detail VALUES("416","PKB_BR.241019.000031","1077","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_pkb_panel_detail VALUES("417","PKB_BR.241019.000031","1022","409090.909","10","40909.0909","368181.8181","1");
INSERT INTO t_pkb_panel_detail VALUES("418","PKB_BR.241019.000031","1023","500000","10","50000","450000","0");
INSERT INTO t_pkb_panel_detail VALUES("419","PKB_BR.241019.000031","1085","227272.7272","10","22727.27272","204545.45448","0");
INSERT INTO t_pkb_panel_detail VALUES("420","PKB_BR.241019.000031","1044","227272.72","10","22727.272","204545.448","0");
INSERT INTO t_pkb_panel_detail VALUES("421","PKB_BR.241019.000031","1093","590909.0909","10","59090.90909","531818.18181","0");
INSERT INTO t_pkb_panel_detail VALUES("422","PKB_BR.241019.000031","1076","590909.0909","10","59090.90909","531818.18181","0");
INSERT INTO t_pkb_panel_detail VALUES("423","PKB_BR.241019.000031","1082","500000","10","50000","450000","0");
INSERT INTO t_pkb_panel_detail VALUES("424","PKB_BR.241019.000031","1074","409090.909","10","40909.0909","368181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("425","PKB_BR.241019.000031","1086","227272.7272","10","22727.27272","204545.45448","0");
INSERT INTO t_pkb_panel_detail VALUES("426","PKB_BR.251019.000032","101","409090.909","0","0","409090.909","0");
INSERT INTO t_pkb_panel_detail VALUES("427","PKB_BR.261019.000027","1025","1000000","0","0","1000000","0");
INSERT INTO t_pkb_panel_detail VALUES("428","PKB_BR.261019.000027","1075","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("429","PKB_BR.261019.000027","1026","365000","0","0","365000","0");
INSERT INTO t_pkb_panel_detail VALUES("430","PKB_BR.261019.000027","1118","289000","0","0","289000","0");
INSERT INTO t_pkb_panel_detail VALUES("431","PKB_BR.261019.000027","101","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("432","PKB_BR.261019.000027","1071","410000","0","0","410000","0");
INSERT INTO t_pkb_panel_detail VALUES("433","PKB_BR.261019.000027","1093","425000","0","0","425000","1");
INSERT INTO t_pkb_panel_detail VALUES("434","PKB_BR.261019.000027","1011","410000","0","0","410000","0");
INSERT INTO t_pkb_panel_detail VALUES("435","PKB_BR.261019.000027","1073","425000","0","0","425000","");
INSERT INTO t_pkb_panel_detail VALUES("436","PKB_BR.261019.000027","1119","289000","0","0","289000","0");
INSERT INTO t_pkb_panel_detail VALUES("437","PKB_BR.261019.000027","1030","365000","0","0","365000","0");
INSERT INTO t_pkb_panel_detail VALUES("438","PKB_BR.261019.000028","106","455000","0","0","455000","0");
INSERT INTO t_pkb_panel_detail VALUES("439","PKB_BR.261019.000028","101","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("440","PKB_BR.261019.000028","1075","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("441","PKB_BR.261019.000028","1074","295000","0","0","295000","0");
INSERT INTO t_pkb_panel_detail VALUES("442","PKB_BR.261019.000028","1082","425000","0","0","425000","1");
INSERT INTO t_pkb_panel_detail VALUES("443","PKB_BR.261019.000028","1126","90000","0","0","90000","0");
INSERT INTO t_pkb_panel_detail VALUES("444","PKB_BR.281019.000029","101","409090.909","10","40909.0909","368181.8181","");
INSERT INTO t_pkb_panel_detail VALUES("445","PKB_BR.281019.000029","1109","272727.2727","10","27272.72727","245454.54542999997","");
INSERT INTO t_pkb_panel_detail VALUES("446","PKB_BR.281019.000029","1120","136363.6363","10","13636.36363","122727.27267","");
INSERT INTO t_pkb_panel_detail VALUES("447","PKB_BR.281019.000029","1071","500000","10","50000","450000","");
INSERT INTO t_pkb_panel_detail VALUES("448","PKB_BR.281019.000029","1093","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_pkb_panel_detail VALUES("449","PKB_BR.281019.000029","1076","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_pkb_panel_detail VALUES("450","PKB_BR.281019.000029","1121","272727.2727","10","27272.72727","245454.54542999997","");
INSERT INTO t_pkb_panel_detail VALUES("451","PKB_BR.281019.000029","1075","409090.909","10","40909.0909","368181.8181","");
INSERT INTO t_pkb_panel_detail VALUES("452","PKB_BR.281019.000029","102","159090.909","10","15909.0909","143181.8181","");
INSERT INTO t_pkb_panel_detail VALUES("453","PKB_BR.281019.000029","1023","500000","10","50000","450000","");
INSERT INTO t_pkb_panel_detail VALUES("454","PKB_BR.281019.000029","1016","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_pkb_panel_detail VALUES("455","PKB_BR.281019.000030","101","409090.909","10","40909.0909","368181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("456","PKB_BR.281019.000030","1109","272727.2727","10","27272.72727","245454.54543","0");
INSERT INTO t_pkb_panel_detail VALUES("457","PKB_BR.281019.000030","1120","136363.6363","10","13636.36363","122727.27267","0");
INSERT INTO t_pkb_panel_detail VALUES("458","PKB_BR.281019.000030","1071","500000","10","50000","450000","0");
INSERT INTO t_pkb_panel_detail VALUES("459","PKB_BR.281019.000030","1093","590909.0909","10","59090.90909","531818.18181","0");
INSERT INTO t_pkb_panel_detail VALUES("460","PKB_BR.281019.000030","1076","590909.0909","10","59090.90909","531818.18181","0");
INSERT INTO t_pkb_panel_detail VALUES("461","PKB_BR.281019.000030","1121","272727.2727","10","27272.72727","245454.54542999997","0");
INSERT INTO t_pkb_panel_detail VALUES("462","PKB_BR.281019.000030","1075","409090.909","10","40909.0909","368181.8181","");
INSERT INTO t_pkb_panel_detail VALUES("463","PKB_BR.281019.000030","102","159090.909","10","15909.0909","143181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("464","PKB_BR.281019.000030","1023","500000","10","50000","450000","1");
INSERT INTO t_pkb_panel_detail VALUES("465","PKB_BR.281019.000030","1016","590909.0909","10","59090.90909","531818.18181","0");
INSERT INTO t_pkb_panel_detail VALUES("466","PKB_BR.291019.000029","101","450000","12","54000","396000","0");
INSERT INTO t_pkb_panel_detail VALUES("467","PKB_BR.291019.000029","1075","450000","12","54000","396000","1");
INSERT INTO t_pkb_panel_detail VALUES("468","PKB_BR.291019.000029","1071","550000","12","66000","484000","0");
INSERT INTO t_pkb_panel_detail VALUES("469","PKB_BR.291019.000029","1082","550000","12","66000","484000","0");
INSERT INTO t_pkb_panel_detail VALUES("470","PKB_BR.291019.000029","1093","650000","12","78000","572000","0");
INSERT INTO t_pkb_panel_detail VALUES("471","PKB_BR.291019.000029","1076","650000","12","78000","572000","0");
INSERT INTO t_pkb_panel_detail VALUES("472","PKB_BR.291019.000029","1074","450000","12","54000","396000","0");
INSERT INTO t_pkb_panel_detail VALUES("473","PKB_BR.291019.000029","1087","250000","12","30000","220000","1");
INSERT INTO t_pkb_panel_detail VALUES("474","PKB_BR.291019.000029","1085","250000","12","30000","220000","1");
INSERT INTO t_pkb_panel_detail VALUES("475","PKB_BR.291019.000030","106","681818.1818","0","0","681818.1818","");
INSERT INTO t_pkb_panel_detail VALUES("476","PKB_BR.291019.000030","1075","454545.4545","0","0","454545.4545","");
INSERT INTO t_pkb_panel_detail VALUES("477","PKB_BR.291019.000030","1023","545454.5454","0","0","545454.5454","");
INSERT INTO t_pkb_panel_detail VALUES("478","PKB_BR.291019.000030","1118","227272.7272","0","0","227272.7272","");
INSERT INTO t_pkb_panel_detail VALUES("479","PKB_BR.291019.000030","1087","227272.7272","0","0","227272.7272","0");
INSERT INTO t_pkb_panel_detail VALUES("480","PKB_BR.291019.000030","1086","227272.7272","0","0","227272.7272","0");
INSERT INTO t_pkb_panel_detail VALUES("481","PKB_BR.291019.000030","1085","227272.7272","0","0","227272.7272","");
INSERT INTO t_pkb_panel_detail VALUES("482","PKB_BR.291019.000030","1044","227272.72","0","0","227272.72","0");
INSERT INTO t_pkb_panel_detail VALUES("483","PKB_BR.301019.000031","106","500000","0","0","500000","");
INSERT INTO t_pkb_panel_detail VALUES("484","PKB_BR.301019.000031","1096","75000","0","0","75000","");
INSERT INTO t_pkb_panel_detail VALUES("485","PKB_BR.301019.000031","1052","75000","0","0","75000","");
INSERT INTO t_pkb_panel_detail VALUES("486","PKB_BR.301019.000031","1071","450000","0","0","450000","");
INSERT INTO t_pkb_panel_detail VALUES("487","PKB_BR.301019.000031","1011","450000","0","0","450000","");
INSERT INTO t_pkb_panel_detail VALUES("488","PKB_BR.301019.000031","109","150000","0","0","150000","");
INSERT INTO t_pkb_panel_detail VALUES("489","PKB_BR.301019.000031","105","175000","0","0","175000","");
INSERT INTO t_pkb_panel_detail VALUES("490","PKB_BR.301019.000031","1053","150000","0","0","150000","");
INSERT INTO t_pkb_panel_detail VALUES("491","PKB_BR.301019.000031","1054","150000","0","0","150000","");
INSERT INTO t_pkb_panel_detail VALUES("492","PKB_BR.301019.000031","1073","450000","0","0","450000","");
INSERT INTO t_pkb_panel_detail VALUES("493","PKB_BR.301019.000031","101","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("494","PKB_BR.021119.000032","1075","318181.8181","0","0","318181.8181","");
INSERT INTO t_pkb_panel_detail VALUES("495","PKB_BR.021119.000032","1047","204545.4545","0","0","204545.4545","");
INSERT INTO t_pkb_panel_detail VALUES("496","PKB_BR.021119.000033","101","454545.4545","0","0","454545.4545","");
INSERT INTO t_pkb_panel_detail VALUES("497","PKB_BR.041119.000034","1118","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("498","PKB_BR.051119.000035","1115","318181.8181","0","0","318181.8181","");
INSERT INTO t_pkb_panel_detail VALUES("499","PKB_BR.051119.000035","1114","318181.8181","0","0","318181.8181","");
INSERT INTO t_pkb_panel_detail VALUES("500","PKB_BR.081119.000036","1075","409090.909","0","0","409090.909","0");
INSERT INTO t_pkb_panel_detail VALUES("501","PKB_BR.141119.000037","1075","318181.8181","0","0","318181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("502","PKB_BR.151119.000038","1076","590909.0909","0","0","590909.0909","0");
INSERT INTO t_pkb_panel_detail VALUES("503","PKB_BR.151119.000038","1016","590909.0909","0","0","590909.0909","0");
INSERT INTO t_pkb_panel_detail VALUES("504","PKB_BR.151119.000038","1073","590909.0909","0","0","590909.0909","");
INSERT INTO t_pkb_panel_detail VALUES("505","PKB_BR.151119.000038","1011","500000","0","0","500000","0");
INSERT INTO t_pkb_panel_detail VALUES("506","PKB_BR.151119.000038","1119","181818.1818","0","0","181818.1818","0");
INSERT INTO t_pkb_panel_detail VALUES("507","PKB_BR.161119.000039","1016","386363.6363","0","0","386363.6363","");
INSERT INTO t_pkb_panel_detail VALUES("508","PKB_BR.161119.000039","1073","386363.6363","0","0","386363.6363","");
INSERT INTO t_pkb_panel_detail VALUES("509","PKB_BR.161119.000039","101","272727.2727","0","0","272727.2727","");
INSERT INTO t_pkb_panel_detail VALUES("510","PKB_BR.161119.000039","1075","272727.2727","0","0","272727.2727","");
INSERT INTO t_pkb_panel_detail VALUES("511","PKB_BR.161119.000039","106","409090.909","0","0","409090.909","");
INSERT INTO t_pkb_panel_detail VALUES("512","PKB_BR.161119.000039","1071","386363.6363","0","0","386363.6363","");
INSERT INTO t_pkb_panel_detail VALUES("513","PKB_BR.161119.000039","1076","386363.6363","0","0","386363.6363","");
INSERT INTO t_pkb_panel_detail VALUES("514","PKB_BR.161119.000039","1082","386363.6363","0","0","386363.6363","");
INSERT INTO t_pkb_panel_detail VALUES("515","PKB_BR.181119.000040","101","454545.4545","10","45454.54545","409090.90905","");
INSERT INTO t_pkb_panel_detail VALUES("516","PKB_BR.181119.000040","106","636363.6363","10","63636.36363","572727.27267","");
INSERT INTO t_pkb_panel_detail VALUES("517","PKB_BR.181119.000040","1112","136363.6363","10","13636.36363","122727.27267","");
INSERT INTO t_pkb_panel_detail VALUES("518","PKB_BR.181119.000040","1099","136363.6363","10","13636.36363","122727.27267","");
INSERT INTO t_pkb_panel_detail VALUES("519","PKB_BR.191119.000041","101","409090.909","0","0","409090.909","");
INSERT INTO t_pkb_panel_detail VALUES("520","PKB_BR.191119.000042","1055","272727.2727","0","0","272727.2727","0");
INSERT INTO t_pkb_panel_detail VALUES("521","PKB_BR.191119.000042","1053","272727.2727","0","0","272727.2727","0");
INSERT INTO t_pkb_panel_detail VALUES("522","PKB_BR.191119.000042","105","272727.2727","0","0","272727.2727","0");
INSERT INTO t_pkb_panel_detail VALUES("523","PKB_BR.191119.000042","1072","500000","0","0","500000","");
INSERT INTO t_pkb_panel_detail VALUES("524","PKB_BR.191119.000042","1017","363636.3636","0","0","363636.3636","");
INSERT INTO t_pkb_panel_detail VALUES("525","PKB_BR.191119.000042","1071","500000","0","0","500000","");
INSERT INTO t_pkb_panel_detail VALUES("526","PKB_BR.191119.000042","1093","590909.0909","0","0","590909.0909","");
INSERT INTO t_pkb_panel_detail VALUES("527","PKB_BR.191119.000042","1058","181818.1818","0","0","181818.1818","");
INSERT INTO t_pkb_panel_detail VALUES("528","PKB_BR.191119.000042","1104","181818.1818","0","0","181818.1818","");
INSERT INTO t_pkb_panel_detail VALUES("529","PKB_BR.191119.000042","1047","590909.0909","0","0","590909.0909","");
INSERT INTO t_pkb_panel_detail VALUES("530","PKB_BR.191119.000043","1076","590909.0909","0","0","590909.0909","");
INSERT INTO t_pkb_panel_detail VALUES("531","PKB_BR.201119.000044","1075","454545.4545","10","45454.54545","409090.90905","");
INSERT INTO t_pkb_panel_detail VALUES("532","PKB_BR.201119.000044","1023","500000","10","50000","450000","");
INSERT INTO t_pkb_panel_detail VALUES("533","PKB_BR.201119.000045","101","454545.4545","10","45454.54545","409090.90905","");
INSERT INTO t_pkb_panel_detail VALUES("534","PKB_BR.201119.000045","1126","272727.2727","10","27272.72727","245454.54542999997","");
INSERT INTO t_pkb_panel_detail VALUES("535","PKB_BR.211119.000046","101","318181.8181","0","0","318181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("536","PKB_BR.211119.000046","1099","127272.7272","0","0","127272.7272","0");
INSERT INTO t_pkb_panel_detail VALUES("537","PKB_BR.211119.000046","1016","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("538","PKB_BR.211119.000046","1022","204545.4545","0","0","204545.4545","0");
INSERT INTO t_pkb_panel_detail VALUES("539","PKB_BR.211119.000046","1023","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("540","PKB_BR.211119.000046","1075","318181.8181","0","0","318181.8181","0");
INSERT INTO t_pkb_panel_detail VALUES("541","PKB_BR.211119.000046","1082","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("542","PKB_BR.211119.000046","1112","127272.7272","0","0","127272.7272","0");
INSERT INTO t_pkb_panel_detail VALUES("543","PKB_BR.211119.000046","1093","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("544","PKB_BR.211119.000046","1076","363636.3636","0","0","363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("545","PKB_BR.211119.000047","1025","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_pkb_panel_detail VALUES("546","PKB_BR.211119.000047","1075","409090.909","10","40909.0909","368181.8181","");
INSERT INTO t_pkb_panel_detail VALUES("547","PKB_BR.211119.000047","1116","272727.2727","10","27272.72727","245454.54542999997","");
INSERT INTO t_pkb_panel_detail VALUES("548","PKB_BR.211119.000047","1082","500000","10","50000","450000","0");
INSERT INTO t_pkb_panel_detail VALUES("549","PKB_BR.211119.000047","1076","590909.0909","10","59090.90909","531818.18181","1");
INSERT INTO t_pkb_panel_detail VALUES("550","PKB_BR.211119.000047","1115","272727.2727","10","27272.72727","245454.54542999997","0");
INSERT INTO t_pkb_panel_detail VALUES("551","PKB_BR.211119.000047","1129","272727.2727","10","27272.72727","245454.54543","1");
INSERT INTO t_pkb_panel_detail VALUES("552","PKB_BR.211119.000048","101","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("553","PKB_BR.211119.000048","1075","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("554","PKB_BR.211119.000048","1011","410000","0","0","410000","0");
INSERT INTO t_pkb_panel_detail VALUES("555","PKB_BR.211119.000048","1071","410000","0","0","410000","0");
INSERT INTO t_pkb_panel_detail VALUES("556","PKB_BR.211119.000048","1023","425000","0","0","425000","1");
INSERT INTO t_pkb_panel_detail VALUES("557","PKB_BR.211119.000048","1077","425000","0","0","425000","1");
INSERT INTO t_pkb_panel_detail VALUES("558","PKB_BR.221119.000049","101","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("559","PKB_BR.221119.000049","1075","350000","0","0","350000","1");
INSERT INTO t_pkb_panel_detail VALUES("560","PKB_BR.221119.000049","1011","410000","0","0","410000","0");
INSERT INTO t_pkb_panel_detail VALUES("561","PKB_BR.221119.000049","1023","425000","0","0","425000","1");
INSERT INTO t_pkb_panel_detail VALUES("562","PKB_BR.221119.000049","1082","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("563","PKB_BR.221119.000049","1076","425000","0","0","425000","1");
INSERT INTO t_pkb_panel_detail VALUES("564","PKB_BR.221119.000049","106","455000","0","0","455000","1");
INSERT INTO t_pkb_panel_detail VALUES("565","PKB_BR.221119.000050","101","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("566","PKB_BR.221119.000050","1075","350000","0","0","350000","1");
INSERT INTO t_pkb_panel_detail VALUES("567","PKB_BR.221119.000050","1011","410000","0","0","410000","0");
INSERT INTO t_pkb_panel_detail VALUES("568","PKB_BR.221119.000050","1023","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("569","PKB_BR.221119.000050","1082","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("570","PKB_BR.221119.000050","1076","425000","0","0","425000","1");
INSERT INTO t_pkb_panel_detail VALUES("571","PKB_BR.221119.000050","106","455000","0","0","455000","1");
INSERT INTO t_pkb_panel_detail VALUES("572","PKB_BR.221119.000051","1075","454545.4545","10","45454.54545","409090.90905","");
INSERT INTO t_pkb_panel_detail VALUES("573","PKB_BR.221119.000051","1023","500000","10","50000","450000","0");
INSERT INTO t_pkb_panel_detail VALUES("574","PKB_BR.221119.000051","1016","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_pkb_panel_detail VALUES("575","PKB_BR.221119.000051","1073","590909.0909","10","59090.90909","531818.18181","0");
INSERT INTO t_pkb_panel_detail VALUES("576","PKB_BR.221119.000051","1088","136363.6363","10","13636.36363","122727.27267","0");
INSERT INTO t_pkb_panel_detail VALUES("577","PKB_BR.221119.000051","1090","136363.6363","10","13636.36363","122727.27267","0");
INSERT INTO t_pkb_panel_detail VALUES("578","PKB_BR.221119.000051","101","454545.4545","10","45454.54545","409090.90905","");
INSERT INTO t_pkb_panel_detail VALUES("579","PKB_BR.221119.000051","1087","227272.7272","10","22727.27272","204545.45448","1");
INSERT INTO t_pkb_panel_detail VALUES("580","PKB_BR.221119.000051","1071","500000","10","50000","450000","");
INSERT INTO t_pkb_panel_detail VALUES("581","PKB_BR.221119.000051","1093","590909.0909","10","59090.90909","531818.18181","1");
INSERT INTO t_pkb_panel_detail VALUES("582","PKB_BR.221119.000051","1074","409090.909","10","40909.0909","368181.8181","1");
INSERT INTO t_pkb_panel_detail VALUES("583","PKB_BR.221119.000052","1025","363636.3636","0","0","363636.3636","1");
INSERT INTO t_pkb_panel_detail VALUES("584","PKB_BR.221119.000052","1085","181818.1818","0","0","181818.1818","1");
INSERT INTO t_pkb_panel_detail VALUES("585","PKB_BR.221119.000052","1125","1363636.3636","0","0","1363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("586","PKB_BR.221119.000052","1131","1363636.3636","0","0","1363636.3636","0");
INSERT INTO t_pkb_panel_detail VALUES("587","PKB_BR.251119.000053","106","681818.1818","10","68181.81818","613636.36362","");
INSERT INTO t_pkb_panel_detail VALUES("588","PKB_BR.251119.000053","1011","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_pkb_panel_detail VALUES("589","PKB_BR.251119.000053","101","545454.5454","10","54545.45454","490909.09085999994","");
INSERT INTO t_pkb_panel_detail VALUES("590","PKB_BR.251119.000053","1073","590909.0909","10","59090.90909","531818.18181","");
INSERT INTO t_pkb_panel_detail VALUES("591","PKB_BR.251119.000053","105","272727.2727","10","27272.72727","245454.54542999997","");
INSERT INTO t_pkb_panel_detail VALUES("592","PKB_BR.251119.000053","1054","272727.2727","10","27272.72727","245454.54542999997","");
INSERT INTO t_pkb_panel_detail VALUES("593","PKB_BR.251119.000053","1053","272727.2727","10","27272.72727","245454.54542999997","");
INSERT INTO t_pkb_panel_detail VALUES("594","PKB_BR.251119.000053","109","318181.8181","10","31818.18181","286363.63629","");
INSERT INTO t_pkb_panel_detail VALUES("595","PKB_BR.251119.000053","1108","136363.6363","10","13636.36363","122727.27267","");
INSERT INTO t_pkb_panel_detail VALUES("596","PKB_BR.251119.000053","1058","181818.1818","10","18181.81818","163636.36362","");
INSERT INTO t_pkb_panel_detail VALUES("597","PKB_BR.251119.000053","1052","90909.0909","10","9090.90909","81818.18181","");
INSERT INTO t_pkb_panel_detail VALUES("598","PKB_BR.251119.000053","1096","90909.09","10","9090.909","81818.181","");
INSERT INTO t_pkb_panel_detail VALUES("599","PKB_BR.261119.000054","1081","227272.7272","0","0","227272.7272","");
INSERT INTO t_pkb_panel_detail VALUES("600","PKB_BR.261119.000055","1121","181818.1818","0","0","181818.1818","0");
INSERT INTO t_pkb_panel_detail VALUES("601","PKB_BR.271119.000056","106","681818.1818","0","0","681818.1818","");
INSERT INTO t_pkb_panel_detail VALUES("602","PKB_BR.271119.000056","101","454545.4545","0","0","454545.4545","");
INSERT INTO t_pkb_panel_detail VALUES("603","PKB_BR.271119.000057","106","455000","0","0","455000","1");
INSERT INTO t_pkb_panel_detail VALUES("604","PKB_BR.271119.000057","1071","410000","0","0","410000","0");
INSERT INTO t_pkb_panel_detail VALUES("605","PKB_BR.271119.000057","101","350000","0","0","350000","");
INSERT INTO t_pkb_panel_detail VALUES("606","PKB_BR.271119.000057","1075","350000","0","0","350000","");
INSERT INTO t_pkb_panel_detail VALUES("607","PKB_BR.271119.000057","1093","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("608","PKB_BR.271119.000057","1076","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("609","PKB_BR.271119.000057","1023","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("610","PKB_BR.271119.000057","1082","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("611","PKB_BR.271119.000057","1077","425000","0","0","425000","1");
INSERT INTO t_pkb_panel_detail VALUES("612","PKB_BR.271119.000058","106","455000","0","0","455000","1");
INSERT INTO t_pkb_panel_detail VALUES("613","PKB_BR.271119.000058","1071","410000","0","0","410000","0");
INSERT INTO t_pkb_panel_detail VALUES("614","PKB_BR.271119.000058","101","350000","0","0","350000","1");
INSERT INTO t_pkb_panel_detail VALUES("615","PKB_BR.271119.000058","1075","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("616","PKB_BR.271119.000058","1093","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("617","PKB_BR.271119.000058","1076","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("618","PKB_BR.271119.000058","1023","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("619","PKB_BR.271119.000058","1082","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("620","PKB_BR.271119.000058","1016","425000","0","0","425000","1");
INSERT INTO t_pkb_panel_detail VALUES("621","PKB_BR.291119.000059","101","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("622","PKB_BR.291119.000059","1025","500000","0","0","500000","0");
INSERT INTO t_pkb_panel_detail VALUES("623","PKB_BR.291119.000059","1075","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("624","PKB_BR.291119.000059","1016","425000","0","0","425000","1");
INSERT INTO t_pkb_panel_detail VALUES("625","PKB_BR.291119.000059","1076","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("626","PKB_BR.291119.000059","1099","90000","0","0","90000","0");
INSERT INTO t_pkb_panel_detail VALUES("627","PKB_BR.291119.000060","101","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("628","PKB_BR.291119.000060","1071","410000","0","0","410000","0");
INSERT INTO t_pkb_panel_detail VALUES("629","PKB_BR.291119.000060","1075","350000","0","0","350000","1");
INSERT INTO t_pkb_panel_detail VALUES("630","PKB_BR.291119.000060","1082","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("631","PKB_BR.291119.000060","1076","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("632","PKB_BR.291119.000061","1071","410000","0","0","410000","1");
INSERT INTO t_pkb_panel_detail VALUES("633","PKB_BR.291119.000061","1112","90000","0","0","90000","0");
INSERT INTO t_pkb_panel_detail VALUES("634","PKB_BR.291119.000061","101","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("635","PKB_BR.291119.000061","1082","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("636","PKB_BR.291119.000061","1075","350000","0","0","350000","1");
INSERT INTO t_pkb_panel_detail VALUES("637","PKB_BR.291119.000061","1099","90000","0","0","90000","0");
INSERT INTO t_pkb_panel_detail VALUES("638","PKB_BR.291119.000061","1077","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("639","PKB_BR.291119.000062","1073","425000","0","0","425000","1");
INSERT INTO t_pkb_panel_detail VALUES("640","PKB_BR.291119.000062","1011","410000","0","0","410000","0");
INSERT INTO t_pkb_panel_detail VALUES("641","PKB_BR.291119.000062","101","350000","0","0","350000","0");
INSERT INTO t_pkb_panel_detail VALUES("642","PKB_BR.291119.000062","1112","90000","0","0","90000","0");
INSERT INTO t_pkb_panel_detail VALUES("643","PKB_BR.291119.000062","1093","425000","0","0","425000","0");
INSERT INTO t_pkb_panel_detail VALUES("644","PKB_BR.291119.000062","1025","500000","0","0","500000","0");
INSERT INTO t_pkb_panel_detail VALUES("645","PKB_BR.291119.000062","1076","425000","0","0","425000","1");
INSERT INTO t_pkb_panel_detail VALUES("646","PKB_BR.291119.000063","1082","500000","10","50000","450000","");
INSERT INTO t_pkb_panel_detail VALUES("647","PKB_BR.291119.000063","1130","136363.6363","10","13636.36363","122727.27267","");
INSERT INTO t_pkb_panel_detail VALUES("648","PKB_BR.291119.000063","1133","90909.0909","0","0","90909.0909","0");
INSERT INTO t_pkb_panel_detail VALUES("649","PKB_BR.291119.000064","102","136363.6363","0","0","136363.6363","0");
INSERT INTO t_pkb_panel_detail VALUES("650","PKB_BR.301119.000065","1019","818181.8181","10","81818.18181","736363.63629","");
INSERT INTO t_pkb_panel_detail VALUES("651","PKB_BR.301119.000065","1067","454545.4545","10","45454.54545","409090.90905","");
INSERT INTO t_pkb_panel_detail VALUES("652","PKB_BR.301119.000065","1132","454545.4545","10","45454.54545","409090.90905","");
INSERT INTO t_pkb_panel_detail VALUES("653","PKB_BR.301119.000066","1025","545454.5454","0","0","545454.5454","");
INSERT INTO t_pkb_panel_detail VALUES("654","PKB_BR.301119.000067","101","500000","0","0","500000","0");



DROP TABLE t_pkb_part_detail;

CREATE TABLE `t_pkb_part_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_pkb` varchar(20) NOT NULL,
  `fk_part` varchar(50) NOT NULL,
  `qty_part` int(11) NOT NULL,
  `harga_jual_part` double DEFAULT NULL,
  `diskon_part` float NOT NULL,
  `harga_diskon_part` double DEFAULT NULL,
  `harga_total_pkb_part` double NOT NULL,
  `mark_part` enum('0','1') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

INSERT INTO t_pkb_part_detail VALUES("1","PKB_BR.110919.000001","9965625560","1","7566680","5","378334","7188346","");
INSERT INTO t_pkb_part_detail VALUES("2","PKB_BR.110919.000001","B45A56146A","1","20058","5","1002.9","19055.1","");
INSERT INTO t_pkb_part_detail VALUES("3","PKB_BR.110919.000001","DA6K51031F","1","13488970","5","674448.5","12814521.5","");
INSERT INTO t_pkb_part_detail VALUES("4","PKB_BR.120919.000002","71101-TE7-K00ZZ","1","999000","5","49950","949050","");
INSERT INTO t_pkb_part_detail VALUES("5","PKB_BR.120919.000002","74115-TG4-U00","1","71000","5","3550","67450","");
INSERT INTO t_pkb_part_detail VALUES("6","PKB_BR.120919.000002","74165-TG4-U00","1","71000","5","3550","67450","");
INSERT INTO t_pkb_part_detail VALUES("7","PKB_BR.140919.000006","56111-BZ330","1","1089000","0","0","1089000","");
INSERT INTO t_pkb_part_detail VALUES("8","PKB_BR.140919.000006","75533-BZ100","1","101640","0","0","101640","");
INSERT INTO t_pkb_part_detail VALUES("9","PKB_BR.140919.000006","SEALER","2","211750","0","0","423500","");
INSERT INTO t_pkb_part_detail VALUES("10","PKB_BR.170919.000007","96301-1HH4B","1","701800","5","35090","666710","");
INSERT INTO t_pkb_part_detail VALUES("11","PKB_BR.230919.000011","75311-0K230","1","187000","0","0","187000","");
INSERT INTO t_pkb_part_detail VALUES("12","PKB_BR.230919.000011","XX","1","30800","0","0","30800","");
INSERT INTO t_pkb_part_detail VALUES("13","PKB_BR.230919.000011","53294-0K120","1","286000","0","0","286000","");
INSERT INTO t_pkb_part_detail VALUES("14","PKB_BR.230919.000011","52116-0K090","1","48400","0","0","48400","");
INSERT INTO t_pkb_part_detail VALUES("15","PKB_BR.240919.000013","KACA FILM","1","400000","0","0","400000","");
INSERT INTO t_pkb_part_detail VALUES("16","PKB_BR.250919.000017","52900-C7000YG1","1","838181.8181","5","41909.090905","796272.727195","");
INSERT INTO t_pkb_part_detail VALUES("17","PKB_BR.250919.000017","52900-C7000YG1","1","838181.8181","5","41909.090905","796272.727195","");
INSERT INTO t_pkb_part_detail VALUES("18","PKB_BR.250919.000017","52900-C7000YG1","1","838181.8181","5","41909.090905","796272.727195","");
INSERT INTO t_pkb_part_detail VALUES("19","PKB_BR.250919.000017","MB283675","1","677272.7272","5","33863.63636","643409.09084","");
INSERT INTO t_pkb_part_detail VALUES("20","PKB_BR.260919.000018","52900-C7000YG1","1","838181.8181","5","41909.090905","796272.727195","");
INSERT INTO t_pkb_part_detail VALUES("21","PKB_BR.260919.000019","MB283675","1","677272.7272","5","33863.63636","643409.09084","");
INSERT INTO t_pkb_part_detail VALUES("22","PKB_BR.260919.000020","MB283675","1","677272.7272","5","33863.63636","643409.09084","");
INSERT INTO t_pkb_part_detail VALUES("23","PKB_BR.021019.000020","81150-BZ390","1","1270500","0","0","1270500","");
INSERT INTO t_pkb_part_detail VALUES("24","PKB_BR.111019.000021","92402-2W035","1","1992727.2727","5","99636.363635","1893090.909065","");
INSERT INTO t_pkb_part_detail VALUES("25","PKB_BR.211019.000025","87910-BZ310","1","146300","5","7315","138985","");
INSERT INTO t_pkb_part_detail VALUES("26","PKB_BR.211019.000025","DGM022-33020-002","1","627000","5","31350","595650","");
INSERT INTO t_pkb_part_detail VALUES("27","PKB_BR.211019.000025","81551-BZ100","1","679250","5","33962.5","645287.5","");
INSERT INTO t_pkb_part_detail VALUES("28","PKB_BR.211019.000025","56111-BZ180","1","935000","5","46750","888250","");
INSERT INTO t_pkb_part_detail VALUES("29","PKB_BR.211019.000025","75533-BZ060","1","68200","5","3410","64790","");
INSERT INTO t_pkb_part_detail VALUES("30","PKB_BR.211019.000025","56117-BZ100","1","70400","5","3520","66880","");
INSERT INTO t_pkb_part_detail VALUES("31","PKB_BR.211019.000025","KC FILM","1","318181","5","15909.05","302271.95","");
INSERT INTO t_pkb_part_detail VALUES("32","PKB_BR.211019.000025","SEALER","2","192500","5","9625","365750","");
INSERT INTO t_pkb_part_detail VALUES("33","PKB_BR.241019.000029","33956-T62-K01","1","315810","5","15790.5","300019.5","");
INSERT INTO t_pkb_part_detail VALUES("34","PKB_BR.241019.000029","71101-T61-T00ZZ","1","2526480","5","126324","2400156","");
INSERT INTO t_pkb_part_detail VALUES("35","PKB_BR.241019.000030","71101-T61-T00ZZ","1","2526480","5","126324","2400156","");
INSERT INTO t_pkb_part_detail VALUES("36","PKB_BR.241019.000030","33956-T62-K01","1","315810","5","15790.5","300019.5","");
INSERT INTO t_pkb_part_detail VALUES("37","PKB_BR.241019.000031","71101-T61-T00ZZ","1","2526480","5","126324","2400156","");
INSERT INTO t_pkb_part_detail VALUES("38","PKB_BR.241019.000031","33956-T62-K01","1","315810","5","15790.5","300019.5","");
INSERT INTO t_pkb_part_detail VALUES("39","PKB_BR.261019.000027","76803-BZ030","1","278300","0","0","278300","");
INSERT INTO t_pkb_part_detail VALUES("40","PKB_BR.021119.000032","73101-TG4-U01","1","767800","5","38390","729410","");
INSERT INTO t_pkb_part_detail VALUES("41","PKB_BR.021119.000032","73125-SYY-000","1","67100","5","3355","63745","");
INSERT INTO t_pkb_part_detail VALUES("42","PKB_BR.021119.000032","73125-TG1-T00","1","45100","5","2255","42845","");
INSERT INTO t_pkb_part_detail VALUES("43","PKB_BR.021119.000032","73126-TF0-003","1","61600","5","3080","58520","");
INSERT INTO t_pkb_part_detail VALUES("44","PKB_BR.021119.000032","91568-TF0-003","1","167200","5","8360","158840","");
INSERT INTO t_pkb_part_detail VALUES("45","PKB_BR.021119.000032","KACA FILM","1","772727.2727","5","38636.363635","734090.909065","");
INSERT INTO t_pkb_part_detail VALUES("46","PKB_BR.021119.000032","SEALER","2","159090.909","5","7954.54545","302272.7271","");
INSERT INTO t_pkb_part_detail VALUES("47","PKB_BR.251119.000053","81561-BZ270","1","385000","0","0","385000","");
INSERT INTO t_pkb_part_detail VALUES("48","PKB_BR.251119.000053","81130-BZ310","1","535000","0","0","535000","");
INSERT INTO t_pkb_part_detail VALUES("49","PKB_BR.251119.000053","52115-BZ180","1","45000","0","0","45000","");
INSERT INTO t_pkb_part_detail VALUES("50","PKB_BR.251119.000053","17751-BZ110","1","120000","0","0","120000","");
INSERT INTO t_pkb_part_detail VALUES("51","PKB_BR.251119.000053","16400-BZ760","1","600000","0","0","600000","");
INSERT INTO t_pkb_part_detail VALUES("52","PKB_BR.251119.000053","16360-BZ300","1","650000","0","0","650000","");
INSERT INTO t_pkb_part_detail VALUES("53","PKB_BR.251119.000053","53301-BZ320","1","1200000","0","0","1200000","");
INSERT INTO t_pkb_part_detail VALUES("54","PKB_BR.251119.000053","SB","1","136363.6363","0","0","136363.6363","");
INSERT INTO t_pkb_part_detail VALUES("55","PKB_BR.271119.000057","SJRBL-AV019","1","369050","0","0","369050","");
INSERT INTO t_pkb_part_detail VALUES("56","PKB_BR.271119.000058","SJRBL-AV019","1","369050","0","0","369050","");



DROP TABLE t_salon;

CREATE TABLE `t_salon` (
  `id_salon` varchar(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `harga_pokok` double NOT NULL,
  `harga_jual` double NOT NULL,
  `diskon` float NOT NULL,
  `ppn` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_salon VALUES("101","SALON INTERIOR KECIL","180000","200000","0","0");
INSERT INTO t_salon VALUES("102","SALON INTERIOR STANDARD","225000","250000","0","0");
INSERT INTO t_salon VALUES("103","SALON INTERIOR BESAR","360000","400000","0","0");
INSERT INTO t_salon VALUES("104","SALON EKSTERIOR KECIL","180000","200000","0","0");
INSERT INTO t_salon VALUES("105","SALON EKSTERIOR STANDARD","225000","250000","0","0");
INSERT INTO t_salon VALUES("106","SALON EKSTERIOR BESAR","360000","400000","0","0");
INSERT INTO t_salon VALUES("107","SALON MOBIL ALL IN KECIL","315000","350000","0","0");
INSERT INTO t_salon VALUES("108","SALON MOBIL ALL IN STANDARD","0","600000","0","0");
INSERT INTO t_salon VALUES("109","SALON MOBIL ALL IN BESAR","720000","800000","0","0");
INSERT INTO t_salon VALUES("110","SALON EKSTERIOR","0","300000","0","0");
INSERT INTO t_salon VALUES("111","COATING","0","2000000","0","0");
INSERT INTO t_salon VALUES("112","COATING MEDIUM","0","3500000","0","0");
INSERT INTO t_salon VALUES("113","COATING LARGE","0","4000000","0","0");
INSERT INTO t_salon VALUES("114","COATING LUXURY","0","6000000","0","0");



DROP TABLE t_satuan;

CREATE TABLE `t_satuan` (
  `id_satuan` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_satuan VALUES("UNT","UNIT");
INSERT INTO t_satuan VALUES("LTR","LITER");
INSERT INTO t_satuan VALUES("PCS","PIECES");



DROP TABLE t_status_pkb;

CREATE TABLE `t_status_pkb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_pkb` varchar(25) DEFAULT NULL,
  `tgl` timestamp NULL DEFAULT current_timestamp(),
  `status` enum('PROSES REPAIR','CETAK KWITANSI','LUNAS') DEFAULT 'PROSES REPAIR',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=282 DEFAULT CHARSET=latin1;

INSERT INTO t_status_pkb VALUES("1","PKB_BR.110919.000001","2019-09-11 14:29:13","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("2","PKB_BR.110919.000001","2019-09-11 14:49:43","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("3","","2019-09-11 15:27:57","LUNAS");
INSERT INTO t_status_pkb VALUES("4","PKB_BR.120919.000002","2019-09-12 09:37:08","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("5","PKB_BR.120919.000002","2019-09-12 09:43:24","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("6","","2019-09-12 09:44:51","LUNAS");
INSERT INTO t_status_pkb VALUES("7","PKB_BR.120919.000003","2019-09-12 10:32:23","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("8","PKB_BR.120919.000003","2019-09-12 10:34:22","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("9","PKB_BR.120919.000003","2019-09-12 10:37:20","LUNAS");
INSERT INTO t_status_pkb VALUES("10","PKB_BR.120919.000004","2019-09-12 11:28:56","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("11","PKB_BR.130919.000005","2019-09-13 14:47:15","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("12","PKB_BR.140919.000006","2019-09-14 09:07:33","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("13","PKB_BR.140919.000007","2019-09-14 09:18:38","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("14","PKB_BR.140919.000007","2019-09-14 09:26:50","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("15","PKB_BR.140919.000007","2019-09-14 10:46:46","LUNAS");
INSERT INTO t_status_pkb VALUES("16","PKB_BR.120919.000004","2019-09-14 11:24:16","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("17","","2019-09-16 13:44:38","LUNAS");
INSERT INTO t_status_pkb VALUES("18","PKB_BR.130919.000005","2019-09-16 15:41:10","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("19","PKB_BR.140919.000006","2019-09-17 11:49:36","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("20","PKB_BR.170919.000007","2019-09-17 15:05:10","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("21","PKB_BR.190919.000008","2019-09-19 09:56:58","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("22","PKB_BR.190919.000008","2019-09-19 10:01:06","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("23","PKB_BR.190919.000008","2019-09-19 10:08:16","LUNAS");
INSERT INTO t_status_pkb VALUES("24","PKB_BR.190919.000009","2019-09-19 14:01:25","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("25","PKB_BR.190919.000009","2019-09-19 14:04:03","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("26","PKB_BR.190919.000010","2019-09-19 14:19:24","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("27","PKB_BR.190919.000010","2019-09-19 14:20:31","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("28","PKB_BR.190919.000010","2019-09-19 14:24:28","LUNAS");
INSERT INTO t_status_pkb VALUES("29","PKB_BR.190919.000009","2019-09-19 16:09:21","LUNAS");
INSERT INTO t_status_pkb VALUES("30","PKB_BR.230919.000011","2019-09-23 09:28:59","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("31","PKB_BR.230919.000011","2019-09-23 09:31:36","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("32","PKB_BR.230919.000011","2019-09-24 08:24:55","LUNAS");
INSERT INTO t_status_pkb VALUES("33","PKB_BR.240919.000012","2019-09-24 08:41:47","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("34","PKB_BR.240919.000012","2019-09-24 08:43:45","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("35","PKB_BR.240919.000013","2019-09-24 09:15:43","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("36","PKB_BR.240919.000012","2019-09-24 09:17:55","LUNAS");
INSERT INTO t_status_pkb VALUES("37","PKB_BR.240919.000013","2019-09-24 09:18:36","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("38","PKB_BR.170919.000007","2019-09-24 10:10:47","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("39","PKB_BR.240919.000008","2019-09-24 10:37:12","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("40","PKB_BR.240919.000008","2019-09-24 10:40:13","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("41","","2019-09-24 10:46:29","LUNAS");
INSERT INTO t_status_pkb VALUES("42","PKB_BR.240919.000009","2019-09-24 10:47:22","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("43","PKB_BR.240919.000009","2019-09-24 10:50:49","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("44","PKB_BR.240919.000009","2019-09-24 10:54:12","LUNAS");
INSERT INTO t_status_pkb VALUES("45","PKB_BR.240919.000009","2019-09-24 10:55:15","LUNAS");
INSERT INTO t_status_pkb VALUES("46","PKB_BR.240919.000010","2019-09-24 10:56:35","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("47","PKB_BR.240919.000010","2019-09-24 11:04:38","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("48","PKB_BR.240919.000010","2019-09-24 11:05:36","LUNAS");
INSERT INTO t_status_pkb VALUES("49","PKB_BR.240919.000011","2019-09-24 11:08:12","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("50","PKB_BR.240919.000011","2019-09-24 11:09:01","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("51","PKB_BR.240919.000012","2019-09-24 11:12:09","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("52","PKB_BR.240919.000012","2019-09-24 11:13:21","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("53","PKB_BR.240919.000012","2019-09-24 11:15:15","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("54","PKB_BR.240919.000012","2019-09-24 11:16:07","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("55","PKB_BR.240919.000012","2019-09-24 11:16:39","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("56","PKB_BR.240919.000012","2019-09-24 11:19:40","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("57","PKB_BR.240919.000012","2019-09-24 11:22:33","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("58","PKB_BR.240919.000012","2019-09-24 11:24:19","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("59","PKB_BR.240919.000012","2019-09-24 11:28:14","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("60","PKB_BR.240919.000012","2019-09-24 11:32:37","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("61","PKB_BR.240919.000012","2019-09-24 11:34:18","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("62","PKB_BR.240919.000012","2019-09-24 11:35:15","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("63","PKB_BR.240919.000012","2019-09-24 11:37:39","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("64","PKB_BR.240919.000012","2019-09-24 12:49:36","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("65","PKB_BR.240919.000012","2019-09-24 12:50:03","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("66","PKB_BR.240919.000012","2019-09-24 13:39:18","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("67","PKB_BR.240919.000012","2019-09-24 13:40:41","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("68","PKB_BR.240919.000012","2019-09-24 13:42:43","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("69","PKB_BR.240919.000012","2019-09-24 13:44:48","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("70","PKB_BR.240919.000012","2019-09-24 13:46:32","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("71","PKB_BR.240919.000012","2019-09-24 13:49:42","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("72","PKB_BR.240919.000012","2019-09-24 13:49:58","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("73","PKB_BR.240919.000012","2019-09-24 13:51:20","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("74","PKB_BR.240919.000012","2019-09-24 13:51:58","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("75","PKB_BR.240919.000012","2019-09-24 13:52:27","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("76","PKB_BR.240919.000012","2019-09-24 13:53:06","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("77","PKB_BR.240919.000012","2019-09-24 13:57:33","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("78","PKB_BR.240919.000012","2019-09-24 14:05:05","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("79","PKB_BR.240919.000012","2019-09-24 14:22:20","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("80","PKB_BR.240919.000012","2019-09-24 14:26:56","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("81","PKB_BR.240919.000012","2019-09-24 14:29:01","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("82","PKB_BR.240919.000012","2019-09-24 14:51:54","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("83","PKB_BR.240919.000012","2019-09-24 15:08:45","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("84","PKB_BR.250919.000012","2019-09-25 08:05:09","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("85","PKB_BR.250919.000013","2019-09-25 08:22:54","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("86","PKB_BR.250919.000012","2019-09-25 08:31:34","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("87","PKB_BR.250919.000012","2019-09-25 08:34:53","LUNAS");
INSERT INTO t_status_pkb VALUES("88","PKB_BR.250919.000014","2019-09-25 08:37:07","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("89","PKB_BR.250919.000015","2019-09-25 08:37:54","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("90","PKB_BR.250919.000014","2019-09-25 08:39:51","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("91","PKB_BR.250919.000016","2019-09-25 08:45:36","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("92","PKB_BR.250919.000017","2019-09-25 08:46:34","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("93","PKB_BR.250919.000017","2019-09-25 08:49:51","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("94","PKB_BR.250919.000016","2019-09-25 08:53:46","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("95","PKB_BR.250919.000017","2019-09-25 13:54:43","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("96","PKB_BR.250919.000017","2019-09-25 13:55:38","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("97","PKB_BR.250919.000017","2019-09-25 14:11:13","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("98","PKB_BR.250919.000017","2019-09-25 14:28:41","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("99","PKB_BR.250919.000017","2019-09-25 14:29:15","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("100","PKB_BR.250919.000017","2019-09-25 14:41:52","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("101","PKB_BR.260919.000017","2019-09-26 08:12:50","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("102","PKB_BR.260919.000017","2019-09-26 08:15:56","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("103","PKB_BR.260919.000018","2019-09-26 08:35:06","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("104","PKB_BR.260919.000019","2019-09-26 08:45:55","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("105","PKB_BR.260919.000020","2019-09-26 09:02:00","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("106","PKB_BR.260919.000020","2019-09-26 09:07:45","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("107","PKB_BR.270919.000021","2019-09-27 13:31:41","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("108","PKB_BR.270919.000021","2019-09-27 13:34:35","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("109","PKB_BR.260919.000018","2019-09-30 11:52:00","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("110","PKB_BR.021019.000019","2019-10-02 08:26:24","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("111","PKB_BR.021019.000019","2019-10-02 08:33:01","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("112","PKB_BR.021019.000020","2019-10-02 10:02:07","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("113","PKB_BR.051019.000021","2019-10-05 08:22:03","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("114","PKB_BR.071019.000022","2019-10-07 15:14:41","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("115","PKB_BR.071019.000022","2019-10-07 15:17:34","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("116","PKB_BR.051019.000021","2019-10-07 15:57:08","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("117","PKB_BR.051019.000021","2019-10-08 08:17:16","LUNAS");
INSERT INTO t_status_pkb VALUES("118","PKB_BR.081019.000022","2019-10-08 09:42:19","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("119","PKB_BR.021019.000020","2019-10-09 08:40:15","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("120","PKB_BR.111019.000021","2019-10-11 10:30:55","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("121","PKB_BR.111019.000021","2019-10-11 10:34:21","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("122","","2019-10-11 10:56:04","LUNAS");
INSERT INTO t_status_pkb VALUES("123","PKB_BR.121019.000022","2019-10-12 08:05:17","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("124","PKB_BR.121019.000022","2019-10-12 08:37:40","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("125","PKB_BR.121019.000023","2019-10-12 09:02:16","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("126","PKB_BR.121019.000024","2019-10-12 10:08:52","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("127","PKB_BR.121019.000025","2019-10-12 10:18:32","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("128","PKB_BR.121019.000025","2019-10-12 10:21:19","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("129","","2019-10-12 10:58:35","LUNAS");
INSERT INTO t_status_pkb VALUES("130","PKB_BR.081019.000022","2019-10-14 08:21:47","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("131","PKB_BR.081019.000022","2019-10-14 08:39:53","LUNAS");
INSERT INTO t_status_pkb VALUES("132","PKB_BR.141019.000023","2019-10-14 15:20:19","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("133","PKB_BR.141019.000023","2019-10-14 15:22:35","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("134","PKB_BR.151019.000024","2019-10-15 09:37:20","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("135","PKB_BR.171019.000025","2019-10-17 15:29:01","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("136","PKB_BR.171019.000025","2019-10-17 15:31:34","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("137","PKB_BR.171019.000025","2019-10-17 15:40:02","LUNAS");
INSERT INTO t_status_pkb VALUES("138","PKB_BR.181019.000026","2019-10-18 08:17:17","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("139","PKB_BR.181019.000026","2019-10-18 08:20:57","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("140","PKB_BR.181019.000027","2019-10-18 10:37:02","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("141","PKB_BR.181019.000027","2019-10-18 10:53:02","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("142","PKB_BR.181019.000027","2019-10-18 10:57:13","LUNAS");
INSERT INTO t_status_pkb VALUES("143","PKB_BR.181019.000026","2019-10-18 13:12:42","LUNAS");
INSERT INTO t_status_pkb VALUES("144","PKB_BR.151019.000024","2019-10-19 11:19:01","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("145","PKB_BR.151019.000024","2019-10-19 11:44:37","LUNAS");
INSERT INTO t_status_pkb VALUES("146","PKB_BR.211019.000025","2019-10-21 09:56:15","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("147","PKB_BR.211019.000026","2019-10-21 13:46:33","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("148","PKB_BR.211019.000027","2019-10-21 14:04:30","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("149","PKB_BR.221019.000028","2019-10-22 09:05:27","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("150","PKB_BR.221019.000028","2019-10-22 14:13:32","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("151","PKB_BR.221019.000028","2019-10-22 15:03:36","LUNAS");
INSERT INTO t_status_pkb VALUES("152","PKB_BR.241019.000029","2019-10-24 14:32:52","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("153","PKB_BR.241019.000030","2019-10-24 15:01:30","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("154","PKB_BR.241019.000031","2019-10-24 15:17:13","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("155","PKB_BR.241019.000031","2019-10-24 15:19:59","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("156","PKB_BR.251019.000032","2019-10-25 08:22:16","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("157","PKB_BR.251019.000032","2019-10-25 14:53:56","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("158","PKB_BR.211019.000026","2019-10-25 15:15:35","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("159","","2019-10-25 15:22:07","LUNAS");
INSERT INTO t_status_pkb VALUES("160","","2019-10-25 15:22:07","LUNAS");
INSERT INTO t_status_pkb VALUES("161","PKB_BR.261019.000027","2019-10-26 08:13:20","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("162","PKB_BR.261019.000027","2019-10-26 08:16:52","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("163","PKB_BR.261019.000028","2019-10-26 08:55:32","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("164","PKB_BR.251019.000032","2019-10-26 09:20:55","LUNAS");
INSERT INTO t_status_pkb VALUES("165","PKB_BR.211019.000026","2019-10-26 10:13:26","LUNAS");
INSERT INTO t_status_pkb VALUES("166","PKB_BR.281019.000029","2019-10-28 10:05:01","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("167","PKB_BR.281019.000030","2019-10-28 10:13:13","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("168","PKB_BR.281019.000030","2019-10-28 10:16:17","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("169","PKB_BR.211019.000025","2019-10-29 09:25:36","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("170","PKB_BR.261019.000028","2019-10-29 10:45:05","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("171","PKB_BR.291019.000029","2019-10-29 13:53:57","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("172","","2019-10-29 13:55:28","LUNAS");
INSERT INTO t_status_pkb VALUES("173","PKB_BR.291019.000029","2019-10-29 13:57:26","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("174","PKB_BR.291019.000030","2019-10-29 15:42:09","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("175","PKB_BR.291019.000030","2019-10-29 15:43:06","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("176","PKB_BR.291019.000030","2019-10-29 15:44:35","LUNAS");
INSERT INTO t_status_pkb VALUES("177","PKB_BR.301019.000031","2019-10-30 13:37:00","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("178","","2019-10-31 09:30:41","LUNAS");
INSERT INTO t_status_pkb VALUES("179","","2019-10-31 09:31:49","LUNAS");
INSERT INTO t_status_pkb VALUES("180","PKB_BR.301019.000031","2019-10-31 11:20:17","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("181","","2019-10-31 15:47:59","LUNAS");
INSERT INTO t_status_pkb VALUES("182","PKB_BR.021119.000032","2019-11-02 10:44:54","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("183","PKB_BR.021119.000032","2019-11-02 10:48:04","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("184","PKB_BR.021119.000033","2019-11-02 11:51:02","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("185","PKB_BR.021119.000033","2019-11-02 11:54:59","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("186","PKB_BR.021119.000033","2019-11-02 12:16:13","LUNAS");
INSERT INTO t_status_pkb VALUES("187","PKB_BR.021119.000033","2019-11-02 12:17:07","LUNAS");
INSERT INTO t_status_pkb VALUES("188","","2019-11-04 09:10:35","LUNAS");
INSERT INTO t_status_pkb VALUES("189","PKB_BR.041119.000034","2019-11-04 14:58:31","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("190","PKB_BR.041119.000034","2019-11-04 15:01:02","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("191","","2019-11-04 15:18:59","LUNAS");
INSERT INTO t_status_pkb VALUES("192","PKB_BR.041119.000034","2019-11-04 15:23:18","LUNAS");
INSERT INTO t_status_pkb VALUES("193","PKB_BR.051119.000035","2019-11-05 09:22:54","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("194","PKB_BR.051119.000035","2019-11-05 09:25:25","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("195","PKB_BR.051119.000035","2019-11-05 09:53:09","LUNAS");
INSERT INTO t_status_pkb VALUES("196","PKB_BR.081119.000036","2019-11-08 15:38:28","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("197","PKB_BR.081119.000036","2019-11-08 15:41:31","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("198","PKB_BR.081119.000036","2019-11-08 16:18:43","LUNAS");
INSERT INTO t_status_pkb VALUES("199","PKB_BR.141119.000037","2019-11-14 14:14:18","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("200","PKB_BR.141119.000037","2019-11-15 13:34:16","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("201","PKB_BR.151119.000038","2019-11-15 14:48:13","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("202","PKB_BR.151119.000038","2019-11-15 14:54:26","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("203","","2019-11-15 15:26:49","LUNAS");
INSERT INTO t_status_pkb VALUES("204","PKB_BR.151119.000038","2019-11-15 15:43:24","LUNAS");
INSERT INTO t_status_pkb VALUES("205","PKB_BR.161119.000039","2019-11-16 08:45:52","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("206","PKB_BR.161119.000039","2019-11-16 08:49:15","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("207","PKB_BR.181119.000040","2019-11-18 08:16:36","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("208","PKB_BR.181119.000040","2019-11-18 08:18:22","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("209","PKB_BR.181119.000040","2019-11-18 08:30:18","LUNAS");
INSERT INTO t_status_pkb VALUES("210","PKB_BR.191119.000041","2019-11-19 08:51:47","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("211","PKB_BR.191119.000041","2019-11-19 08:53:12","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("212","PKB_BR.191119.000041","2019-11-19 08:59:31","LUNAS");
INSERT INTO t_status_pkb VALUES("213","PKB_BR.191119.000042","2019-11-19 14:15:21","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("214","PKB_BR.191119.000042","2019-11-19 14:21:01","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("215","PKB_BR.191119.000043","2019-11-19 14:34:49","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("216","PKB_BR.191119.000043","2019-11-19 14:38:10","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("217","PKB_BR.191119.000042","2019-11-19 15:46:34","LUNAS");
INSERT INTO t_status_pkb VALUES("218","PKB_BR.191119.000043","2019-11-19 15:49:25","LUNAS");
INSERT INTO t_status_pkb VALUES("219","PKB_BR.201119.000044","2019-11-20 10:30:57","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("220","PKB_BR.201119.000044","2019-11-20 10:36:34","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("221","PKB_BR.201119.000045","2019-11-20 10:41:49","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("222","PKB_BR.201119.000045","2019-11-20 10:45:00","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("223","PKB_BR.211119.000046","2019-11-21 09:14:30","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("224","PKB_BR.211119.000046","2019-11-21 09:17:14","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("225","PKB_BR.211119.000047","2019-11-21 09:42:53","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("226","PKB_BR.211119.000047","2019-11-21 09:46:53","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("227","PKB_BR.211119.000048","2019-11-21 14:12:01","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("228","PKB_BR.211119.000048","2019-11-21 14:16:29","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("229","PKB_BR.221119.000049","2019-11-22 09:18:29","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("230","PKB_BR.221119.000050","2019-11-22 09:27:15","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("231","PKB_BR.221119.000050","2019-11-22 09:32:28","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("232","PKB_BR.221119.000051","2019-11-22 10:27:40","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("233","PKB_BR.221119.000051","2019-11-22 10:31:02","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("234","","2019-11-22 13:41:03","LUNAS");
INSERT INTO t_status_pkb VALUES("235","PKB_BR.221119.000052","2019-11-22 13:56:32","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("236","PKB_BR.211019.000027","2019-11-25 08:42:25","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("237","PKB_BR.221119.000052","2019-11-25 09:28:51","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("238","PKB_BR.251119.000053","2019-11-25 14:11:01","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("239","PKB_BR.251119.000053","2019-11-25 14:14:43","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("240","PKB_BR.251119.000053","2019-11-25 14:19:43","LUNAS");
INSERT INTO t_status_pkb VALUES("241","PKB_BR.261119.000054","2019-11-26 13:35:05","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("242","PKB_BR.261119.000054","2019-11-26 13:37:51","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("243","PKB_BR.261119.000054","2019-11-26 13:44:30","LUNAS");
INSERT INTO t_status_pkb VALUES("244","PKB_BR.261119.000055","2019-11-26 15:46:17","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("245","PKB_BR.261119.000055","2019-11-26 15:48:37","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("246","PKB_BR.261119.000055","2019-11-26 15:52:46","LUNAS");
INSERT INTO t_status_pkb VALUES("247","PKB_BR.271119.000056","2019-11-27 09:21:49","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("248","PKB_BR.271119.000056","2019-11-27 09:25:07","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("249","PKB_BR.271119.000057","2019-11-27 10:52:13","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("250","PKB_BR.271119.000058","2019-11-27 11:01:54","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("251","PKB_BR.271119.000056","2019-11-27 14:21:28","LUNAS");
INSERT INTO t_status_pkb VALUES("252","PKB_BR.291119.000059","2019-11-29 08:32:13","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("253","PKB_BR.291119.000059","2019-11-29 08:36:41","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("254","PKB_BR.291119.000060","2019-11-29 09:30:21","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("255","PKB_BR.291119.000060","2019-11-29 09:33:17","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("256","PKB_BR.291119.000061","2019-11-29 09:52:14","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("257","PKB_BR.291119.000061","2019-11-29 09:56:13","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("258","PKB_BR.291119.000062","2019-11-29 10:12:39","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("259","PKB_BR.291119.000062","2019-11-29 10:15:25","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("260","PKB_BR.271119.000056","2019-11-29 13:44:53","LUNAS");
INSERT INTO t_status_pkb VALUES("261","PKB_BR.291119.000063","2019-11-29 14:25:48","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("262","PKB_BR.291119.000063","2019-11-29 14:27:10","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("263","PKB_BR.291119.000063","2019-11-29 14:30:06","LUNAS");
INSERT INTO t_status_pkb VALUES("264","PKB_BR.291119.000064","2019-11-29 15:13:04","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("265","PKB_BR.291119.000064","2019-11-29 15:20:42","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("266","PKB_BR.291119.000064","2019-11-29 15:23:41","LUNAS");
INSERT INTO t_status_pkb VALUES("267","PKB_BR.271119.000058","2019-11-30 08:24:14","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("268","PKB_BR.301119.000065","2019-11-30 09:35:05","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("269","PKB_BR.301119.000065","2019-11-30 09:37:23","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("270","PKB_BR.301119.000066","2019-11-30 13:21:52","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("271","PKB_BR.301119.000066","2019-11-30 13:22:45","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("272","PKB_BR.301119.000067","2019-11-30 13:26:13","PROSES REPAIR");
INSERT INTO t_status_pkb VALUES("273","PKB_BR.301119.000067","2019-11-30 13:26:48","CETAK KWITANSI");
INSERT INTO t_status_pkb VALUES("274","PKB_BR.301119.000066","2019-11-30 13:44:56","LUNAS");
INSERT INTO t_status_pkb VALUES("275","PKB_BR.301119.000067","2019-11-30 13:45:44","LUNAS");
INSERT INTO t_status_pkb VALUES("276","PKB_BR.130919.000005","2019-12-07 09:14:08","LUNAS");
INSERT INTO t_status_pkb VALUES("277","PKB_BR.120919.000002","2019-12-07 09:25:44","LUNAS");
INSERT INTO t_status_pkb VALUES("278","PKB_BR.120919.000002","2019-12-07 10:23:30","LUNAS");
INSERT INTO t_status_pkb VALUES("279","PKB_BR.110919.000001","2019-12-07 10:26:44","LUNAS");
INSERT INTO t_status_pkb VALUES("280","PKB_BR.120919.000004","2019-12-07 10:55:32","LUNAS");
INSERT INTO t_status_pkb VALUES("281","PKB_BR.120919.000004","2019-12-07 10:55:32","LUNAS");



DROP TABLE t_supplier;

CREATE TABLE `t_supplier` (
  `id_supplier` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `npwp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_supplier VALUES("MAZDA","DEALER MAZDA","SOLO","","");
INSERT INTO t_supplier VALUES("HONDA","HONDA SOLOBARU","SOLOBARU SUKOHARJO","","");
INSERT INTO t_supplier VALUES("NASMOCO SOBA","TOYOTA NASMOCO SOLOBARU","SOLOBARU","","");
INSERT INTO t_supplier VALUES("MITSUBISHI JEBRES","SEIGN HEADLAMP LH","SURAKARTA","","");
INSERT INTO t_supplier VALUES("DAIHATSU","DAIHATSU SOLOBARU","SOLOBARU SUKOHARJO","","");
INSERT INTO t_supplier VALUES("HYU","HYUNDAI SOLOBARU","SOLOBARU","02717880845","");
INSERT INTO t_supplier VALUES("NS","NISSAN SOLOBARU","SOLOBARU SUKOHARJO","","");



DROP TABLE t_tipe_kendaraan;

CREATE TABLE `t_tipe_kendaraan` (
  `id_tipe_kendaraan` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `fk_group_kendaraan` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tipe_kendaraan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_tipe_kendaraan VALUES("ACCORD","HONDA ACCORD","HND");
INSERT INTO t_tipe_kendaraan VALUES("AGYA","TOYOTA AGYA","TYO");
INSERT INTO t_tipe_kendaraan VALUES("ALPHARD","TOYOTA ALPHARD","TYO");
INSERT INTO t_tipe_kendaraan VALUES("APVBLINDVAN","APV BLIND VAN","SZU");
INSERT INTO t_tipe_kendaraan VALUES("AVANZA","TOYOTA AVANZA","TYO");
INSERT INTO t_tipe_kendaraan VALUES("AYLA","DAIHATSU AYLA","DHST");
INSERT INTO t_tipe_kendaraan VALUES("BALENO","SUZUKI BALENO","SZU");
INSERT INTO t_tipe_kendaraan VALUES("BMW","BMW 325I","BMW");
INSERT INTO t_tipe_kendaraan VALUES("BR-V","HONDA BR-V","HND");
INSERT INTO t_tipe_kendaraan VALUES("BRIO","HONDA BRIO","HND");
INSERT INTO t_tipe_kendaraan VALUES("CALYA","TOYOTA CALYA","TYO");
INSERT INTO t_tipe_kendaraan VALUES("CAMRY","TOYOTA CAMRY","TYO");
INSERT INTO t_tipe_kendaraan VALUES("CARRY","CARRY SUZUKI","SZU");
INSERT INTO t_tipe_kendaraan VALUES("CHRYS","CHRYSLER","");
INSERT INTO t_tipe_kendaraan VALUES("CITY","HONDA CITY","HND");
INSERT INTO t_tipe_kendaraan VALUES("CIVIC","HONDA CIVIC","HND");
INSERT INTO t_tipe_kendaraan VALUES("CIVICFD","HONDA CIVIC FD","HND");
INSERT INTO t_tipe_kendaraan VALUES("COLTDIESEL","COLT DIESEL FE71 TRUCK BOX","MTSH");
INSERT INTO t_tipe_kendaraan VALUES("COLTDIESELFE74","COLT DIESEL FE74 S","MTSH");
INSERT INTO t_tipe_kendaraan VALUES("CONFERO","WULING CONFERO","WLG");
INSERT INTO t_tipe_kendaraan VALUES("COUPE","AUDI COUPE","AUDI");
INSERT INTO t_tipe_kendaraan VALUES("CRV","HONDA CRV","HND");
INSERT INTO t_tipe_kendaraan VALUES("DATSUNGO","DATSUN GO","DTS");
INSERT INTO t_tipe_kendaraan VALUES("DELICA","MITSUBISHI DELICA","MTSH");
INSERT INTO t_tipe_kendaraan VALUES("DUTRO130HD","HINO DUTRO 130 HD","HNO");
INSERT INTO t_tipe_kendaraan VALUES("ERTIGA","SUZUKI ERTIGA","SZU");
INSERT INTO t_tipe_kendaraan VALUES("FORD","FORD EVEREST","FORD");
INSERT INTO t_tipe_kendaraan VALUES("FORTUNER","TOYOTA FORTUNER","TYO");
INSERT INTO t_tipe_kendaraan VALUES("FREED","HONDA FREED","HND");
INSERT INTO t_tipe_kendaraan VALUES("GRANDLIVINA","NISSAN GRAND LIVINA","NSS");
INSERT INTO t_tipe_kendaraan VALUES("GRANDMAX","DAIHATSU GRANDMAX","DHST");
INSERT INTO t_tipe_kendaraan VALUES("GRANDMAXPICK UP","GRAND MAX PICK UP","DHST");
INSERT INTO t_tipe_kendaraan VALUES("HCRZ","HOONDA CR-Z","HND");
INSERT INTO t_tipe_kendaraan VALUES("HIACE","TOYOTA HIACE","TYO");
INSERT INTO t_tipe_kendaraan VALUES("HRV","HONDA HRV","HND");
INSERT INTO t_tipe_kendaraan VALUES("HYU","HYUNDAI GRACE H 100","HYU");
INSERT INTO t_tipe_kendaraan VALUES("INNOVA","TOYOTA INNOVA","TYO");
INSERT INTO t_tipe_kendaraan VALUES("JAZZ","HONDA JAZZ","HND");
INSERT INTO t_tipe_kendaraan VALUES("JP","JEEP WRANGLER","JP");
INSERT INTO t_tipe_kendaraan VALUES("KARIMUN","SUZUKI KARIMUN","SZU");
INSERT INTO t_tipe_kendaraan VALUES("KIJANG","TOYOTA KIJANG","TYO");
INSERT INTO t_tipe_kendaraan VALUES("L300","MITSUBISHI L300 PICK UP BOX","MTSH");
INSERT INTO t_tipe_kendaraan VALUES("LANCER","MITSUBISHI LANCER","MTSH");
INSERT INTO t_tipe_kendaraan VALUES("LS","LEXUS","TYO");
INSERT INTO t_tipe_kendaraan VALUES("LUXIO","DAIHATSU LUXIO","DHST");
INSERT INTO t_tipe_kendaraan VALUES("MARCH","NISSAN MARCH","NSS");
INSERT INTO t_tipe_kendaraan VALUES("MAZDA2","MAZDA 2","MAZDA");
INSERT INTO t_tipe_kendaraan VALUES("MIRAGE","MITSUBISHI MIRAGE","MTSH");
INSERT INTO t_tipe_kendaraan VALUES("MOBILIO","HONDA MOBILIO","HND");
INSERT INTO t_tipe_kendaraan VALUES("MRCY","MERCY","MERCY");
INSERT INTO t_tipe_kendaraan VALUES("NEWCOROLLAALTIS","NEW COROLLA ALTIS","TYO");
INSERT INTO t_tipe_kendaraan VALUES("NEWVIOS","NEW VIOS","TYO");
INSERT INTO t_tipe_kendaraan VALUES("ODSY","HONDA ODYSSEY","HND");
INSERT INTO t_tipe_kendaraan VALUES("PAJERO","MITSUBISHI PAJERO","MTSH");
INSERT INTO t_tipe_kendaraan VALUES("PANTHER","ISUZU PANTHER","");
INSERT INTO t_tipe_kendaraan VALUES("PICANTO","KIA PIKANTO","KIA");
INSERT INTO t_tipe_kendaraan VALUES("RUSH","TOYOTA RUSH","TYO");
INSERT INTO t_tipe_kendaraan VALUES("SIENTA","TOYOTA SIENTA","TYO");
INSERT INTO t_tipe_kendaraan VALUES("SIGRA","DAIHATSU SIGRA","DHST");
INSERT INTO t_tipe_kendaraan VALUES("SUZUKIFUTURA","SUZUKI FUTURA","SZU");
INSERT INTO t_tipe_kendaraan VALUES("SUZUKIPICKUP","SUZUKI PICK UP GC 415 T","SZU");
INSERT INTO t_tipe_kendaraan VALUES("SWIFT","SUZUKI SWIFT","SZU");
INSERT INTO t_tipe_kendaraan VALUES("SX4","SUZUKI SX4","SZU");
INSERT INTO t_tipe_kendaraan VALUES("TERIOS","DAIHATSU TERIOS","DHST");
INSERT INTO t_tipe_kendaraan VALUES("TERRANO","NISSAN TERRANO","NSS");
INSERT INTO t_tipe_kendaraan VALUES("TVFR","TOYOTA VELLFIRE","TYO");
INSERT INTO t_tipe_kendaraan VALUES("VARIO","HONDA VARIO","HND");
INSERT INTO t_tipe_kendaraan VALUES("VW","VW TIGUAN","VW");
INSERT INTO t_tipe_kendaraan VALUES("WISH","TOYOTA WISH","TYO");
INSERT INTO t_tipe_kendaraan VALUES("X6","BMW X6","BMW");
INSERT INTO t_tipe_kendaraan VALUES("XENIA","DAIHATSU XENIA","DHST");
INSERT INTO t_tipe_kendaraan VALUES("XPANDER","MITSUBISHI XPANDER","MTSH");
INSERT INTO t_tipe_kendaraan VALUES("YARIS","TOYOTA YARIS","TYO");



DROP TABLE t_user;

CREATE TABLE `t_user` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL DEFAULT '',
  `nama` varchar(50) NOT NULL,
  `nip` varchar(30) DEFAULT NULL,
  `level` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO t_user VALUES("1","admin","21232f297a57a5a743894a0e4a801fc3","danang","111","Admin");



DROP TABLE t_warna_kendaraan;

CREATE TABLE `t_warna_kendaraan` (
  `id_warna_kendaraan` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  PRIMARY KEY (`id_warna_kendaraan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_warna_kendaraan VALUES("AA","ABU-ABU");
INSERT INTO t_warna_kendaraan VALUES("AAM","ABU-ABU MUDA");
INSERT INTO t_warna_kendaraan VALUES("BLACK","BLACK METALIC");
INSERT INTO t_warna_kendaraan VALUES("BLCK","BLACK");
INSERT INTO t_warna_kendaraan VALUES("BLUE","BLUE");
INSERT INTO t_warna_kendaraan VALUES("BROWN","BROWN");
INSERT INTO t_warna_kendaraan VALUES("CKLT","COKELAT");
INSERT INTO t_warna_kendaraan VALUES("GREEN","GREEN");
INSERT INTO t_warna_kendaraan VALUES("KM","KUNING MUTIARA");
INSERT INTO t_warna_kendaraan VALUES("KS","KUNING SILVER");
INSERT INTO t_warna_kendaraan VALUES("MMT","MERAH METALIC");
INSERT INTO t_warna_kendaraan VALUES("ORANGE","ORANGE PHOENIX");
INSERT INTO t_warna_kendaraan VALUES("RD","RED");
INSERT INTO t_warna_kendaraan VALUES("RED","RALLYE RED");
INSERT INTO t_warna_kendaraan VALUES("SILVER","SILVER METALIK");
INSERT INTO t_warna_kendaraan VALUES("WHITE","WHITE");



