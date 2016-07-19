.class Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$2;
.super Ljava/lang/Object;
.source "SearchBusinessesByList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)V
    .locals 0

    .prologue
    .line 1816
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$2;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1820
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$2;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)Lcom/yelp/android/appdata/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->l()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/d;->a(Ljava/util/List;)Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    move-result-object v0

    .line 1822
    sget-object v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$4;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->c()Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1850
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1851
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 1855
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$2;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->d(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;Ljava/util/List;)V

    .line 1857
    :goto_1
    return-void

    .line 1826
    :pswitch_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1828
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->h()Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;->f()Lcom/yelp/android/serializable/PlatformFilter;

    move-result-object v0

    .line 1832
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 1836
    :goto_2
    const-string/jumbo v2, "delivery"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1837
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1843
    :goto_3
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$2;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1832
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformFilter;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1839
    :cond_1
    const-string/jumbo v2, "pickup"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1840
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    .line 1846
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$2;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->c(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)V

    goto :goto_1

    .line 1853
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_3

    .line 1822
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
