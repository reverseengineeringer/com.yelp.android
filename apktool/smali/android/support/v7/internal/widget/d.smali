.class public Landroid/support/v7/internal/widget/d;
.super Landroid/database/DataSetObservable;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/widget/d$1;,
        Landroid/support/v7/internal/widget/d$e;,
        Landroid/support/v7/internal/widget/d$a;,
        Landroid/support/v7/internal/widget/d$c;,
        Landroid/support/v7/internal/widget/d$d;,
        Landroid/support/v7/internal/widget/d$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v7/internal/widget/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/internal/widget/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/internal/widget/d$c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/content/Context;

.field private final h:Ljava/lang/String;

.field private i:Landroid/content/Intent;

.field private j:Landroid/support/v7/internal/widget/d$b;

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Landroid/support/v7/internal/widget/d$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    const-class v0, Landroid/support/v7/internal/widget/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v7/internal/widget/d;->a:Ljava/lang/String;

    .line 221
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/internal/widget/d;->b:Ljava/lang/Object;

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v7/internal/widget/d;->c:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->g:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/support/v7/internal/widget/d$c;)Z
    .locals 2

    .prologue
    .line 730
    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 731
    if-eqz v0, :cond_0

    .line 732
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/internal/widget/d;->n:Z

    .line 733
    invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->j()V

    .line 734
    invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->e()V

    .line 735
    invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->g()Z

    .line 736
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/d;->notifyChanged()V

    .line 738
    :cond_0
    return v0
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/d;Z)Z
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/d;->l:Z

    return p1
.end method

.method static synthetic b(Landroid/support/v7/internal/widget/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Landroid/support/v7/internal/widget/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 569
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/d;->m:Z

    if-nez v0, :cond_0

    .line 570
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No preceding call to #readHistoricalData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/d;->n:Z

    if-nez v0, :cond_2

    .line 580
    :cond_1
    :goto_0
    return-void

    .line 575
    :cond_2
    iput-boolean v4, p0, Landroid/support/v7/internal/widget/d;->n:Z

    .line 576
    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 577
    new-instance v0, Landroid/support/v7/internal/widget/d$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/d$e;-><init>(Landroid/support/v7/internal/widget/d;Landroid/support/v7/internal/widget/d$1;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v7/internal/widget/d;->f:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/support/v7/internal/widget/d;->h:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/os/a;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 657
    invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->h()Z

    move-result v0

    .line 658
    invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->i()Z

    move-result v1

    or-int/2addr v0, v1

    .line 659
    invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->j()V

    .line 660
    if-eqz v0, :cond_0

    .line 661
    invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->g()Z

    .line 662
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/d;->notifyChanged()V

    .line 664
    :cond_0
    return-void
.end method

.method private g()Z
    .locals 4

    .prologue
    .line 674
    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->j:Landroid/support/v7/internal/widget/d$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->i:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 676
    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->j:Landroid/support/v7/internal/widget/d$b;

    iget-object v1, p0, Landroid/support/v7/internal/widget/d;->i:Landroid/content/Intent;

    iget-object v2, p0, Landroid/support/v7/internal/widget/d;->e:Ljava/util/List;

    iget-object v3, p0, Landroid/support/v7/internal/widget/d;->f:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Landroid/support/v7/internal/widget/d$b;->a(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 678
    const/4 v0, 0x1

    .line 680
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 690
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/d;->o:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/internal/widget/d;->i:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 691
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/d;->o:Z

    .line 692
    iget-object v1, p0, Landroid/support/v7/internal/widget/d;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 693
    iget-object v1, p0, Landroid/support/v7/internal/widget/d;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/d;->i:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 695
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    .line 696
    :goto_0
    if-ge v1, v3, :cond_0

    .line 697
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 698
    iget-object v4, p0, Landroid/support/v7/internal/widget/d;->e:Ljava/util/List;

    new-instance v5, Landroid/support/v7/internal/widget/d$a;

    invoke-direct {v5, p0, v0}, Landroid/support/v7/internal/widget/d$a;-><init>(Landroid/support/v7/internal/widget/d;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 700
    :cond_0
    const/4 v0, 0x1

    .line 702
    :cond_1
    return v0
.end method

.method private i()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 713
    iget-boolean v2, p0, Landroid/support/v7/internal/widget/d;->l:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/support/v7/internal/widget/d;->n:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/internal/widget/d;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 715
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/d;->l:Z

    .line 716
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/d;->m:Z

    .line 717
    invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->k()V

    .line 720
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private j()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 745
    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroid/support/v7/internal/widget/d;->k:I

    sub-int v3, v0, v1

    .line 746
    if-gtz v3, :cond_1

    .line 756
    :cond_0
    return-void

    .line 749
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/d;->n:Z

    move v1, v2

    .line 750
    :goto_0
    if-ge v1, v3, :cond_0

    .line 751
    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/d$c;

    .line 750
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private k()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 962
    .line 964
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->g:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/internal/widget/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v1

    .line 972
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 973
    const-string/jumbo v0, "UTF-8"

    invoke-interface {v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 975
    const/4 v0, 0x0

    .line 976
    :goto_0
    if-eq v0, v8, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 977
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 980
    :cond_0
    const-string/jumbo v0, "historical-records"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 981
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v2, "Share records file does not start with historical-records tag."

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1017
    :catch_0
    move-exception v0

    .line 1018
    :try_start_2
    sget-object v2, Landroid/support/v7/internal/widget/d;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error reading historical recrod file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/internal/widget/d;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1022
    if-eqz v1, :cond_1

    .line 1024
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1030
    :cond_1
    :goto_1
    return-void

    .line 985
    :cond_2
    :try_start_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->f:Ljava/util/List;

    .line 986
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 989
    :cond_3
    :goto_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    .line 990
    if-ne v3, v8, :cond_4

    .line 1022
    if-eqz v1, :cond_1

    .line 1024
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 1025
    :catch_1
    move-exception v0

    goto :goto_1

    .line 993
    :cond_4
    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    .line 996
    :try_start_6
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 997
    const-string/jumbo v4, "historical-record"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 998
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v2, "Share records file not well-formed."

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1019
    :catch_2
    move-exception v0

    .line 1020
    :try_start_7
    sget-object v2, Landroid/support/v7/internal/widget/d;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error reading historical recrod file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/internal/widget/d;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1022
    if-eqz v1, :cond_1

    .line 1024
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 1025
    :catch_3
    move-exception v0

    goto :goto_1

    .line 1001
    :cond_5
    const/4 v3, 0x0

    :try_start_9
    const-string/jumbo v4, "activity"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1002
    const/4 v4, 0x0

    const-string/jumbo v5, "time"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1004
    const/4 v6, 0x0

    const-string/jumbo v7, "weight"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 1006
    new-instance v7, Landroid/support/v7/internal/widget/d$c;

    invoke-direct {v7, v3, v4, v5, v6}, Landroid/support/v7/internal/widget/d$c;-><init>(Ljava/lang/String;JF)V

    .line 1007
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 1022
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_6

    .line 1024
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 1027
    :cond_6
    :goto_3
    throw v0

    .line 1025
    :catch_4
    move-exception v0

    goto/16 :goto_1

    :catch_5
    move-exception v1

    goto :goto_3

    .line 965
    :catch_6
    move-exception v0

    goto/16 :goto_1
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 398
    iget-object v1, p0, Landroid/support/v7/internal/widget/d;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 399
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->f()V

    .line 400
    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/pm/ResolveInfo;)I
    .locals 5

    .prologue
    .line 427
    iget-object v2, p0, Landroid/support/v7/internal/widget/d;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 428
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->f()V

    .line 429
    iget-object v3, p0, Landroid/support/v7/internal/widget/d;->e:Ljava/util/List;

    .line 430
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 431
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 432
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/d$a;

    .line 433
    iget-object v0, v0, Landroid/support/v7/internal/widget/d$a;->a:Landroid/content/pm/ResolveInfo;

    if-ne v0, p1, :cond_0

    .line 434
    monitor-exit v2

    move v0, v1

    .line 437
    :goto_1
    return v0

    .line 431
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    :cond_1
    const/4 v0, -0x1

    monitor-exit v2

    goto :goto_1

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(I)Landroid/content/pm/ResolveInfo;
    .locals 2

    .prologue
    .line 413
    iget-object v1, p0, Landroid/support/v7/internal/widget/d;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 414
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->f()V

    .line 415
    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/d$a;

    iget-object v0, v0, Landroid/support/v7/internal/widget/d$a;->a:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    return-object v0

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(I)Landroid/content/Intent;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 460
    iget-object v2, p0, Landroid/support/v7/internal/widget/d;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 461
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->i:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 462
    monitor-exit v2

    move-object v0, v1

    .line 490
    :goto_0
    return-object v0

    .line 465
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->f()V

    .line 467
    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/d$a;

    .line 469
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/support/v7/internal/widget/d$a;->a:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/support/v7/internal/widget/d$a;->a:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Landroid/support/v7/internal/widget/d;->i:Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 474
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 476
    iget-object v4, p0, Landroid/support/v7/internal/widget/d;->p:Landroid/support/v7/internal/widget/d$d;

    if-eqz v4, :cond_1

    .line 478
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 479
    iget-object v5, p0, Landroid/support/v7/internal/widget/d;->p:Landroid/support/v7/internal/widget/d$d;

    invoke-interface {v5, p0, v4}, Landroid/support/v7/internal/widget/d$d;->a(Landroid/support/v7/internal/widget/d;Landroid/content/Intent;)Z

    move-result v4

    .line 481
    if-eqz v4, :cond_1

    .line 482
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 486
    :cond_1
    new-instance v1, Landroid/support/v7/internal/widget/d$c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/support/v7/internal/widget/d$c;-><init>(Landroid/content/ComponentName;JF)V

    .line 488
    invoke-direct {p0, v1}, Landroid/support/v7/internal/widget/d;->a(Landroid/support/v7/internal/widget/d$c;)Z

    .line 490
    monitor-exit v2

    goto :goto_0

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Landroid/content/pm/ResolveInfo;
    .locals 3

    .prologue
    .line 515
    iget-object v1, p0, Landroid/support/v7/internal/widget/d;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 516
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->f()V

    .line 517
    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->e:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/d$a;

    iget-object v0, v0, Landroid/support/v7/internal/widget/d$a;->a:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    .line 521
    :goto_0
    return-object v0

    .line 520
    :cond_0
    monitor-exit v1

    .line 521
    const/4 v0, 0x0

    goto :goto_0

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 644
    iget-object v1, p0, Landroid/support/v7/internal/widget/d;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 645
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->f()V

    .line 646
    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 647
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(I)V
    .locals 6

    .prologue
    .line 535
    iget-object v2, p0, Landroid/support/v7/internal/widget/d;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 536
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->f()V

    .line 538
    iget-object v0, p0, Landroid/support/v7/internal/widget/d;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/d$a;

    .line 539
    iget-object v1, p0, Landroid/support/v7/internal/widget/d;->e:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/widget/d$a;

    .line 542
    if-eqz v1, :cond_0

    .line 544
    iget v1, v1, Landroid/support/v7/internal/widget/d$a;->b:F

    iget v3, v0, Landroid/support/v7/internal/widget/d$a;->b:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x40a00000    # 5.0f

    add-float/2addr v1, v3

    .line 550
    :goto_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/support/v7/internal/widget/d$a;->a:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/support/v7/internal/widget/d$a;->a:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    new-instance v0, Landroid/support/v7/internal/widget/d$c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v3, v4, v5, v1}, Landroid/support/v7/internal/widget/d$c;-><init>(Landroid/content/ComponentName;JF)V

    .line 555
    invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/d;->a(Landroid/support/v7/internal/widget/d$c;)Z

    .line 556
    monitor-exit v2

    .line 557
    return-void

    .line 547
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
