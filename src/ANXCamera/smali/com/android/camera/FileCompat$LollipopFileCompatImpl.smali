.class Lcom/android/camera/FileCompat$LollipopFileCompatImpl;
.super Lcom/android/camera/FileCompat$BaseFileCompatImpl;
.source "FileCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FileCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LollipopFileCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 440
    invoke-direct {p0}, Lcom/android/camera/FileCompat$BaseFileCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 690
    invoke-super {p0, p1, p2}, Lcom/android/camera/FileCompat$BaseFileCompatImpl;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public createNewFile(Ljava/lang/String;)Z
    .locals 3

    .line 611
    invoke-super {p0, p1}, Lcom/android/camera/FileCompat$BaseFileCompatImpl;->createNewFile(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 612
    return v1

    .line 613
    :cond_0
    invoke-static {p1}, Lcom/android/camera/FileCompat;->isSDFile(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 614
    return v2

    .line 617
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/camera/FileCompat$LollipopFileCompatImpl;->getDocumentFileByPath(Ljava/lang/String;ZLjava/lang/String;Z)Landroid/support/v4/provider/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public createNewFileFixPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 622
    invoke-super {p0, p1}, Lcom/android/camera/FileCompat$BaseFileCompatImpl;->createNewFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    return-object p1

    .line 624
    :cond_0
    invoke-static {p1}, Lcom/android/camera/FileCompat;->isSDFile(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 625
    return-object v1

    .line 628
    :cond_1
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/camera/FileCompat$LollipopFileCompatImpl;->getDocumentFileByPath(Ljava/lang/String;ZLjava/lang/String;Z)Landroid/support/v4/provider/DocumentFile;

    move-result-object v0

    .line 629
    if-nez v0, :cond_2

    .line 630
    return-object v1

    .line 633
    :cond_2
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 634
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/support/v4/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 636
    return-object p1
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 3

    .line 641
    invoke-super {p0, p1}, Lcom/android/camera/FileCompat$BaseFileCompatImpl;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 642
    return v1

    .line 643
    :cond_0
    invoke-static {p1}, Lcom/android/camera/FileCompat;->isSDFile(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 644
    return v2

    .line 647
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v2, v0, v2}, Lcom/android/camera/FileCompat$LollipopFileCompatImpl;->getDocumentFileByPath(Ljava/lang/String;ZLjava/lang/String;Z)Landroid/support/v4/provider/DocumentFile;

    move-result-object p1

    .line 648
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/provider/DocumentFile;->delete()Z

    move-result v1

    :goto_0
    return v1
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 3

    .line 600
    invoke-super {p0, p1}, Lcom/android/camera/FileCompat$BaseFileCompatImpl;->exists(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 601
    return v1

    .line 602
    :cond_0
    invoke-static {p1}, Lcom/android/camera/FileCompat;->isSDFile(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 603
    return v2

    .line 605
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v2, v0, v2}, Lcom/android/camera/FileCompat$LollipopFileCompatImpl;->getDocumentFileByPath(Ljava/lang/String;ZLjava/lang/String;Z)Landroid/support/v4/provider/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public getDocumentFileByPath(Ljava/lang/String;ZLjava/lang/String;Z)Landroid/support/v4/provider/DocumentFile;
    .locals 10

    .line 452
    const-string v0, "FileCompat"

    const-string v1, "getDocumentFileByPath start>>"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-static {p1}, Lcom/android/camera/FileCompat;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 454
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 455
    return-object v1

    .line 458
    :cond_0
    invoke-static {v0}, Lcom/android/camera/FileCompat;->access$100(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 459
    if-nez v2, :cond_1

    .line 460
    return-object v1

    .line 464
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/support/v4/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v2

    .line 466
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 468
    return-object v2

    .line 471
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 473
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 474
    return-object v1

    .line 478
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 479
    array-length v0, p1

    sub-int/2addr v0, v3

    new-array v0, v0, [Ljava/lang/String;

    .line 480
    array-length v4, p1

    sub-int/2addr v4, v3

    const/4 v5, 0x0

    invoke-static {p1, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 482
    nop

    .line 483
    array-length v4, v0

    move-object v6, v2

    move v2, v5

    move v7, v2

    :goto_0
    if-ge v2, v4, :cond_8

    aget-object v8, v0, v2

    .line 485
    if-nez v6, :cond_4

    .line 486
    goto :goto_2

    .line 489
    :cond_4
    if-eqz v7, :cond_5

    .line 490
    invoke-virtual {v6, v8}, Landroid/support/v4/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v6

    .line 491
    goto :goto_1

    .line 494
    :cond_5
    invoke-virtual {v6, v8}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v9

    .line 495
    if-nez v9, :cond_7

    .line 496
    if-eqz p2, :cond_6

    .line 497
    nop

    .line 498
    invoke-virtual {v6, v8}, Landroid/support/v4/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v6

    .line 483
    move v7, v3

    goto :goto_1

    .line 500
    :cond_6
    return-object v1

    .line 503
    :cond_7
    nop

    .line 483
    move-object v6, v9

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 507
    :cond_8
    :goto_2
    if-nez v6, :cond_9

    .line 508
    return-object v1

    .line 511
    :cond_9
    array-length v0, p1

    sub-int/2addr v0, v3

    aget-object p1, p1, v0

    .line 514
    nop

    .line 515
    nop

    .line 517
    const-string v0, "FileCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDocumentFileByPath>> DocumentFile findFile or createFile, createIfNotFound = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 519
    if-eqz p2, :cond_d

    .line 520
    if-eqz p4, :cond_a

    .line 522
    :try_start_0
    invoke-virtual {v6, p1}, Landroid/support/v4/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :goto_3
    goto :goto_6

    .line 523
    :catch_0
    move-exception p2

    .line 525
    const-string p3, "FileCompat"

    const-string p4, "createFile error"

    invoke-static {p3, p4, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    invoke-virtual {v6, p1}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object p2

    goto :goto_3

    .line 529
    :cond_a
    nop

    .line 530
    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    .line 531
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_b

    if-lez p2, :cond_b

    .line 532
    invoke-static {p1}, Lcom/android/camera/FileCompat;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 533
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_b

    .line 534
    invoke-virtual {p1, v5, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 538
    :cond_b
    if-eqz v1, :cond_c

    goto :goto_4

    :cond_c
    move-object v1, p1

    :goto_4
    :try_start_1
    invoke-virtual {v6, p3, v1}, Landroid/support/v4/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 543
    goto :goto_5

    .line 539
    :catch_1
    move-exception p2

    .line 541
    const-string p3, "FileCompat"

    const-string p4, "createFile error"

    invoke-static {p3, p4, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    invoke-virtual {v6, p1}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object p1

    .line 544
    move-object p2, p1

    :goto_5
    goto :goto_6

    .line 546
    :cond_d
    invoke-virtual {v6, p1}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object p2

    .line 549
    :goto_6
    const-string p1, "FileCompat"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getDocumentFileByPath end<< cost time= "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " ms"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    return-object p2
.end method

.method public getFileOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;
    .locals 2

    .line 556
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lcom/android/camera/FileCompat;->isSDFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 557
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/FileCompat$BaseFileCompatImpl;->getFileOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v0

    .line 558
    if-eqz v0, :cond_1

    .line 559
    return-object v0

    .line 563
    :cond_1
    invoke-static {p1}, Lcom/android/camera/FileCompat;->isSDFile(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 564
    return-object v1

    .line 567
    :cond_2
    nop

    .line 568
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/camera/FileCompat$LollipopFileCompatImpl;->getDocumentFileByPath(Ljava/lang/String;ZLjava/lang/String;Z)Landroid/support/v4/provider/DocumentFile;

    move-result-object p1

    .line 569
    if-eqz p1, :cond_3

    .line 571
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    .line 572
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 573
    invoke-virtual {p1}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    goto :goto_0

    .line 574
    :catch_0
    move-exception p1

    .line 576
    const-string p2, "FileCompat"

    const-string v0, "getFileOutputStream error"

    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 577
    return-object v1

    .line 581
    :cond_3
    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 588
    invoke-static {p1}, Lcom/android/camera/FileCompat;->isSDFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 589
    invoke-super {p0, p1, p2}, Lcom/android/camera/FileCompat$BaseFileCompatImpl;->getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 591
    :cond_0
    invoke-static {p1}, Lcom/android/camera/FileCompat;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/camera/FileCompat$LollipopFileCompatImpl;->getDocumentFileByPath(Ljava/lang/String;ZLjava/lang/String;Z)Landroid/support/v4/provider/DocumentFile;

    move-result-object p1

    .line 594
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 595
    invoke-virtual {p1}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "rw"

    .line 594
    invoke-virtual {p2, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public mkdirs(Ljava/lang/String;)Z
    .locals 3

    .line 679
    invoke-super {p0, p1}, Lcom/android/camera/FileCompat$BaseFileCompatImpl;->mkdirs(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 680
    return v1

    .line 681
    :cond_0
    invoke-static {p1}, Lcom/android/camera/FileCompat;->isSDFile(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 682
    return v2

    .line 684
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/android/camera/FileCompat$LollipopFileCompatImpl;->getDocumentFileByPath(Ljava/lang/String;ZLjava/lang/String;Z)Landroid/support/v4/provider/DocumentFile;

    move-result-object p1

    if-nez p1, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method public renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 653
    invoke-super {p0, p1, p2}, Lcom/android/camera/FileCompat$BaseFileCompatImpl;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    const/4 p1, 0x1

    return p1

    .line 657
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 658
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 659
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 660
    const-string p1, "FileCompat"

    const-string p2, "only support renameto the same folder"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return v1

    .line 664
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    .line 666
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/android/camera/FileCompat$LollipopFileCompatImpl;->getDocumentFileByPath(Ljava/lang/String;ZLjava/lang/String;Z)Landroid/support/v4/provider/DocumentFile;

    move-result-object v0

    .line 667
    if-nez v0, :cond_2

    .line 668
    return v1

    .line 671
    :cond_2
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/support/v4/provider/DocumentFile;->renameTo(Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    .line 672
    :catch_0
    move-exception p2

    .line 673
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renameFile error, path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
