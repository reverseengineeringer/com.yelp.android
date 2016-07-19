.class public Lcom/yelp/android/ui/activities/businesspage/a;
.super Ljava/lang/Object;
.source "AddBusinessToContacts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/businesspage/a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/app/Activity;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 6

    .prologue
    const/16 v1, 0x320

    const/4 v4, 0x0

    .line 38
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->au()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aT()Ljava/util/List;

    move-result-object v2

    .line 40
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 41
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->u()Ljava/lang/String;

    move-result-object v0

    .line 44
    :cond_0
    new-instance v3, Lcom/yelp/android/ui/activities/businesspage/a$a;

    invoke-direct {v3, p0, p1}, Lcom/yelp/android/ui/activities/businesspage/a$a;-><init>(Landroid/app/Activity;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 45
    if-nez v0, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/yelp/android/ui/activities/businesspage/a$a;->a(Landroid/os/Message;)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_1
    const/4 v5, 0x1

    move v2, v1

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/webimageview/ImageLoader;->start(Ljava/lang/String;IILcom/yelp/android/webimageview/ImageLoaderHandler;ZZ)V

    goto :goto_0
.end method
