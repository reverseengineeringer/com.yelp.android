.class Lcom/yelp/android/ui/activities/businesspage/d$3;
.super Ljava/lang/Object;
.source "BusinessNotificationAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/businesspage/d;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/yelp/android/serializable/User;

.field final synthetic d:Lcom/yelp/android/serializable/YelpBusiness;

.field final synthetic e:Lcom/yelp/android/ui/activities/businesspage/d;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/d;Ljava/util/List;Landroid/content/Context;Lcom/yelp/android/serializable/User;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/d$3;->e:Lcom/yelp/android/ui/activities/businesspage/d;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/d$3;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/businesspage/d$3;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/yelp/android/ui/activities/businesspage/d$3;->c:Lcom/yelp/android/serializable/User;

    iput-object p5, p0, Lcom/yelp/android/ui/activities/businesspage/d$3;->d:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/d$3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/d$3;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/d$3;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/d$3;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 195
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/d$3;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/d$3;->b:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/d$3;->a:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/d$3;->b:Landroid/content/Context;

    const v4, 0x7f0702fa

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/yelp/android/ui/activities/businesspage/d$3;->d:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessRecentFriends:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/ActivityUserList;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
