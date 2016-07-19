.class Lcom/yelp/android/ui/h;
.super Lcom/yelp/android/appdata/webrequests/k$b;
.source "ActivityMonocle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k$b",
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

.field private final d:Lcom/yelp/android/ui/g;

.field private final e:Landroid/view/SurfaceView;

.field private f:Lcom/yelp/android/serializable/Category;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/ActivityMonocle;Lcom/yelp/android/ui/MonocleEngine;Lcom/yelp/android/ui/g;Landroid/view/SurfaceView;)V
    .locals 1

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/k$b;-><init>()V

    .line 626
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/h;->f:Lcom/yelp/android/serializable/Category;

    .line 633
    iput-object p1, p0, Lcom/yelp/android/ui/h;->b:Lcom/yelp/android/ui/ActivityMonocle;

    .line 634
    iput-object p2, p0, Lcom/yelp/android/ui/h;->c:Lcom/yelp/android/ui/MonocleEngine;

    .line 635
    iput-object p3, p0, Lcom/yelp/android/ui/h;->d:Lcom/yelp/android/ui/g;

    .line 636
    iput-object p4, p0, Lcom/yelp/android/ui/h;->e:Landroid/view/SurfaceView;

    .line 637
    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 734
    const-string/jumbo v0, "SEARCH"

    const-string/jumbo v1, "Starting HTTP Request"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
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
    .line 668
    .line 669
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    if-nez v2, :cond_0

    .line 670
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Cannot use this request object"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 672
    :cond_0
    check-cast p1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 673
    invoke-interface/range {p2 .. p2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->b()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/yelp/android/serializable/BusinessSearchResult;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 676
    const-string/jumbo v2, "SEARCH"

    const-string/jumbo v3, "done"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/h;->e:Landroid/view/SurfaceView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/h;->e:Landroid/view/SurfaceView;

    const/16 v3, 0x3ec

    invoke-static {v2, v3}, Lcom/yelp/android/ui/m;->b(Landroid/view/SurfaceView;I)V

    .line 680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/h;->c:Lcom/yelp/android/ui/MonocleEngine;

    invoke-virtual/range {p1 .. p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->f()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    double-to-float v3, v4

    invoke-virtual/range {p1 .. p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->f()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/yelp/android/ui/MonocleEngine;->SetLocation(FF)V

    .line 684
    new-instance v13, Lcom/yelp/android/ui/panels/d;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/h;->b:Lcom/yelp/android/ui/ActivityMonocle;

    invoke-direct {v13, v2}, Lcom/yelp/android/ui/panels/d;-><init>(Landroid/content/Context;)V

    .line 685
    invoke-virtual {v13}, Lcom/yelp/android/ui/panels/d;->a()V

    .line 687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/h;->c:Lcom/yelp/android/ui/MonocleEngine;

    invoke-virtual {v2}, Lcom/yelp/android/ui/MonocleEngine;->ClearObjects()V

    .line 688
    const/4 v3, 0x0

    .line 689
    new-instance v14, Lcom/yelp/android/ui/c;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/h;->b:Lcom/yelp/android/ui/ActivityMonocle;

    invoke-direct {v14, v2}, Lcom/yelp/android/ui/c;-><init>(Landroid/content/Context;)V

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
    invoke-virtual {v13, v9}, Lcom/yelp/android/ui/panels/d;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/h;->b:Lcom/yelp/android/ui/ActivityMonocle;

    sget-object v4, Lcom/yelp/android/util/StringUtils$Format;->ABBREVIATED:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v9, v2, v4}, Lcom/yelp/android/serializable/YelpBusiness;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/yelp/android/ui/panels/d;->setDistance(Ljava/lang/String;)V

    .line 696
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/yelp/android/ui/panels/d;->setVisibility(I)V

    .line 698
    invoke-virtual {v14, v13}, Lcom/yelp/android/ui/c;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 699
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    mul-int/2addr v2, v4

    .line 702
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    array-length v4, v4

    if-ge v4, v2, :cond_4

    .line 703
    :cond_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v10, v2

    .line 705
    :goto_1
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 706
    invoke-virtual {v5, v10}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/h;->c:Lcom/yelp/android/ui/MonocleEngine;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v9}, Lcom/yelp/android/serializable/YelpBusiness;->R()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v9}, Lcom/yelp/android/serializable/YelpBusiness;->Q()D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v7, v0

    new-instance v8, Lcom/yelp/android/ui/i;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yelp/android/ui/h;->b:Lcom/yelp/android/ui/ActivityMonocle;

    invoke-direct {v8, v15, v9}, Lcom/yelp/android/ui/i;-><init>(Lcom/yelp/android/ui/ActivityMonocle;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-virtual/range {v2 .. v8}, Lcom/yelp/android/ui/MonocleEngine;->AddObject([BIIFFLcom/yelp/android/ui/ActivityMonocle$MonocleButton;)I

    .line 690
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    move-object v3, v10

    goto :goto_0

    .line 717
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/h;->d:Lcom/yelp/android/ui/g;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/yelp/android/ui/g;->a:Z

    .line 718
    sget-object v2, Lcom/yelp/android/ui/ActivityMonocle;->a:Landroid/app/Dialog;

    if-eqz v2, :cond_3

    .line 719
    sget-object v2, Lcom/yelp/android/ui/ActivityMonocle;->a:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->hide()V

    .line 721
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/h;->b:Lcom/yelp/android/ui/ActivityMonocle;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yelp/android/ui/h;->b:Lcom/yelp/android/ui/ActivityMonocle;

    iget-object v3, v3, Lcom/yelp/android/ui/ActivityMonocle;->b:Lcom/yelp/android/ui/a;

    invoke-virtual {v3}, Lcom/yelp/android/ui/a;->a()I

    move-result v3

    iput v3, v2, Lcom/yelp/android/ui/ActivityMonocle;->d:I

    .line 722
    const/4 v2, 0x0

    sput-object v2, Lcom/yelp/android/ui/h;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 723
    return-void

    :cond_4
    move-object v10, v3

    goto :goto_1
.end method

.method public a(Lcom/yelp/android/serializable/Category;)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lcom/yelp/android/ui/h;->f:Lcom/yelp/android/serializable/Category;

    .line 641
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 727
    iget-object v0, p0, Lcom/yelp/android/ui/h;->b:Lcom/yelp/android/ui/ActivityMonocle;

    invoke-virtual {v0}, Lcom/yelp/android/ui/ActivityMonocle;->a()V

    .line 728
    const-string/jumbo v0, "SEARCH"

    const-string/jumbo v1, "No location provider for search"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 644
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/database/g;->e()Lcom/yelp/android/ca/a;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;-><init>(Lcom/yelp/android/ca/a;Lcom/yelp/android/appdata/webrequests/k$b;)V

    sput-object v0, Lcom/yelp/android/ui/h;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 647
    sget-object v0, Lcom/yelp/android/ui/h;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->MONOCLE:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 648
    iget-object v0, p0, Lcom/yelp/android/ui/h;->f:Lcom/yelp/android/serializable/Category;

    if-eqz v0, :cond_0

    .line 649
    sget-object v0, Lcom/yelp/android/ui/h;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    iget-object v1, p0, Lcom/yelp/android/ui/h;->f:Lcom/yelp/android/serializable/Category;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/serializable/Category;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 651
    :cond_0
    sget-object v0, Lcom/yelp/android/ui/h;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->y()V

    .line 653
    sget-object v0, Lcom/yelp/android/ui/ActivityMonocle;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 654
    sget-object v0, Lcom/yelp/android/ui/ActivityMonocle;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 656
    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 659
    sget-object v0, Lcom/yelp/android/ui/h;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    if-eqz v0, :cond_0

    .line 660
    sget-object v0, Lcom/yelp/android/ui/h;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 661
    sget-object v0, Lcom/yelp/android/ui/h;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Z)V

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/h;->b:Lcom/yelp/android/ui/ActivityMonocle;

    iget-object v0, v0, Lcom/yelp/android/ui/ActivityMonocle;->b:Lcom/yelp/android/ui/a;

    iget-object v1, p0, Lcom/yelp/android/ui/h;->b:Lcom/yelp/android/ui/ActivityMonocle;

    iget v1, v1, Lcom/yelp/android/ui/ActivityMonocle;->d:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/a;->a(I)V

    .line 664
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
    .line 739
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

    .line 741
    const/4 v0, 0x0

    sput-object v0, Lcom/yelp/android/ui/h;->a:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 742
    sget-object v0, Lcom/yelp/android/ui/ActivityMonocle;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 743
    sget-object v0, Lcom/yelp/android/ui/ActivityMonocle;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 745
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/h;->b()V

    .line 746
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 619
    check-cast p2, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/h;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V

    return-void
.end method
