.class Lcom/yelp/android/ui/m;
.super Lcom/yelp/android/appdata/webrequests/j;
.source "ActivityMonocle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/j",
        "<",
        "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;


# instance fields
.field private final b:Lcom/yelp/android/ui/ActivityMonocle;

.field private final c:Lcom/yelp/android/ui/MonocleEngine;

.field private final d:Lcom/yelp/android/ui/l;

.field private final e:Landroid/view/SurfaceView;

.field private f:Lcom/yelp/android/serializable/Category;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/ActivityMonocle;Lcom/yelp/android/ui/MonocleEngine;Lcom/yelp/android/ui/l;Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V
    .locals 1

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/j;-><init>()V

    .line 631
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/m;->f:Lcom/yelp/android/serializable/Category;

    .line 635
    iput-object p1, p0, Lcom/yelp/android/ui/m;->b:Lcom/yelp/android/ui/ActivityMonocle;

    .line 636
    iput-object p2, p0, Lcom/yelp/android/ui/m;->c:Lcom/yelp/android/ui/MonocleEngine;

    .line 637
    iput-object p3, p0, Lcom/yelp/android/ui/m;->d:Lcom/yelp/android/ui/l;

    .line 638
    iput-object p4, p0, Lcom/yelp/android/ui/m;->e:Landroid/view/SurfaceView;

    .line 639
    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 729
    const-string/jumbo v0, "SEARCH"

    const-string/jumbo v1, "Starting HTTP Request"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;",
            ")V"
        }
    .end annotation

    .prologue
    .line 670
    .line 671
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    if-nez v2, :cond_0

    .line 672
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Cannot use this request object"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 674
    :cond_0
    check-cast p1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 675
    invoke-interface/range {p2 .. p2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getBusinessSearchResults()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/yelp/android/serializable/BusinessSearchResult;->getBusinessesFromBusinessSearchResult(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 677
    const-string/jumbo v2, "SEARCH"

    const-string/jumbo v3, "done"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/m;->e:Landroid/view/SurfaceView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/m;->e:Landroid/view/SurfaceView;

    const/16 v3, 0x3ec

    invoke-static {v2, v3}, Lcom/yelp/android/ui/u;->b(Landroid/view/SurfaceView;I)V

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/m;->c:Lcom/yelp/android/ui/MonocleEngine;

    invoke-virtual/range {p1 .. p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->getLocation()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    double-to-float v3, v4

    invoke-virtual/range {p1 .. p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->getLocation()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/yelp/android/ui/MonocleEngine;->SetLocation(FF)V

    .line 684
    new-instance v13, Lcom/yelp/android/ui/panels/ac;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/m;->b:Lcom/yelp/android/ui/ActivityMonocle;

    invoke-direct {v13, v2}, Lcom/yelp/android/ui/panels/ac;-><init>(Landroid/content/Context;)V

    .line 685
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/yelp/android/ui/panels/ac;->a(Lcom/yelp/android/ui/panels/ae;)V

    .line 687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/m;->c:Lcom/yelp/android/ui/MonocleEngine;

    invoke-virtual {v2}, Lcom/yelp/android/ui/MonocleEngine;->ClearObjects()V

    .line 688
    const/4 v3, 0x0

    .line 689
    new-instance v14, Lcom/yelp/android/ui/g;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/m;->b:Lcom/yelp/android/ui/ActivityMonocle;

    invoke-direct {v14, v2}, Lcom/yelp/android/ui/g;-><init>(Landroid/content/Context;)V

    .line 690
    const/4 v2, 0x0

    move v11, v2

    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_2

    .line 691
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/yelp/android/serializable/YelpBusiness;

    .line 693
    invoke-virtual {v13, v9}, Lcom/yelp/android/ui/panels/ac;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/m;->b:Lcom/yelp/android/ui/ActivityMonocle;

    sget-object v4, Lcom/yelp/android/util/StringUtils$Format;->ABBREVIATED:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v9, v2, v4}, Lcom/yelp/android/serializable/YelpBusiness;->getDistanceFormatted(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/yelp/android/ui/panels/ac;->setDistance(Ljava/lang/String;)V

    .line 695
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/yelp/android/ui/panels/ac;->setVisibility(I)V

    .line 697
    invoke-virtual {v14, v13}, Lcom/yelp/android/ui/g;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 698
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    mul-int/2addr v2, v4

    .line 701
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    array-length v4, v4

    if-ge v4, v2, :cond_4

    .line 702
    :cond_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v10, v2

    .line 704
    :goto_1
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 705
    invoke-virtual {v5, v10}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/m;->c:Lcom/yelp/android/ui/MonocleEngine;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v9}, Lcom/yelp/android/serializable/YelpBusiness;->getLatitude()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v9}, Lcom/yelp/android/serializable/YelpBusiness;->getLongitude()D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v7, v0

    new-instance v8, Lcom/yelp/android/ui/n;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yelp/android/ui/m;->b:Lcom/yelp/android/ui/ActivityMonocle;

    invoke-direct {v8, v15, v9}, Lcom/yelp/android/ui/n;-><init>(Lcom/yelp/android/ui/ActivityMonocle;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-virtual/range {v2 .. v8}, Lcom/yelp/android/ui/MonocleEngine;->AddObject([BIIFFLcom/yelp/android/ui/ActivityMonocle$MonocleButton;)I

    .line 690
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    move-object v3, v10

    goto :goto_0

    .line 712
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/m;->d:Lcom/yelp/android/ui/l;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/yelp/android/ui/l;->a:Z

    .line 713
    sget-object v2, Lcom/yelp/android/ui/ActivityMonocle;->a:Landroid/app/Dialog;

    if-eqz v2, :cond_3

    .line 714
    sget-object v2, Lcom/yelp/android/ui/ActivityMonocle;->a:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->hide()V

    .line 716
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/m;->b:Lcom/yelp/android/ui/ActivityMonocle;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yelp/android/ui/m;->b:Lcom/yelp/android/ui/ActivityMonocle;

    iget-object v3, v3, Lcom/yelp/android/ui/ActivityMonocle;->b:Lcom/yelp/android/ui/e;

    invoke-virtual {v3}, Lcom/yelp/android/ui/e;->a()I

    move-result v3

    iput v3, v2, Lcom/yelp/android/ui/ActivityMonocle;->d:I

    .line 717
    const/4 v2, 0x0

    sput-object v2, Lcom/yelp/android/ui/m;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 718
    return-void

    :cond_4
    move-object v10, v3

    goto :goto_1
.end method

.method public a(Lcom/yelp/android/serializable/Category;)V
    .locals 0

    .prologue
    .line 642
    iput-object p1, p0, Lcom/yelp/android/ui/m;->f:Lcom/yelp/android/serializable/Category;

    .line 643
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/yelp/android/ui/m;->b:Lcom/yelp/android/ui/ActivityMonocle;

    invoke-virtual {v0}, Lcom/yelp/android/ui/ActivityMonocle;->a()V

    .line 723
    const-string/jumbo v0, "SEARCH"

    const-string/jumbo v1, "No location provider for search"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 646
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/database/q;->g()Lcom/yelp/android/ax/a;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;-><init>(Lcom/yelp/android/ax/a;Lcom/yelp/android/appdata/webrequests/j;)V

    sput-object v0, Lcom/yelp/android/ui/m;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 648
    sget-object v0, Lcom/yelp/android/ui/m;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->MONOCLE:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setSearchMode(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 649
    iget-object v0, p0, Lcom/yelp/android/ui/m;->f:Lcom/yelp/android/serializable/Category;

    if-eqz v0, :cond_0

    .line 650
    sget-object v0, Lcom/yelp/android/ui/m;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    iget-object v1, p0, Lcom/yelp/android/ui/m;->f:Lcom/yelp/android/serializable/Category;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setCategory(Lcom/yelp/android/serializable/Category;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 652
    :cond_0
    sget-object v0, Lcom/yelp/android/ui/m;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->search()V

    .line 654
    sget-object v0, Lcom/yelp/android/ui/ActivityMonocle;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 655
    sget-object v0, Lcom/yelp/android/ui/ActivityMonocle;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 657
    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 660
    sget-object v0, Lcom/yelp/android/ui/m;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    if-eqz v0, :cond_0

    .line 661
    sget-object v0, Lcom/yelp/android/ui/m;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setCallback(Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 662
    sget-object v0, Lcom/yelp/android/ui/m;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->cancel(Z)V

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/m;->b:Lcom/yelp/android/ui/ActivityMonocle;

    iget-object v0, v0, Lcom/yelp/android/ui/ActivityMonocle;->b:Lcom/yelp/android/ui/e;

    iget-object v1, p0, Lcom/yelp/android/ui/m;->b:Lcom/yelp/android/ui/ActivityMonocle;

    iget v1, v1, Lcom/yelp/android/ui/ActivityMonocle;->d:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/e;->a(I)V

    .line 665
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 734
    const-string/jumbo v0, "SEARCH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/4 v0, 0x0

    sput-object v0, Lcom/yelp/android/ui/m;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 737
    sget-object v0, Lcom/yelp/android/ui/ActivityMonocle;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 738
    sget-object v0, Lcom/yelp/android/ui/ActivityMonocle;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 740
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/m;->b()V

    .line 741
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 625
    check-cast p2, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/m;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V

    return-void
.end method
