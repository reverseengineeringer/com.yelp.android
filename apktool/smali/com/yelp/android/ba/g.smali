.class Lcom/yelp/android/ba/g;
.super Ljava/lang/Object;
.source "FeedUserProfileViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/yelp/android/serializable/User;

.field final synthetic d:Lcom/yelp/android/ba/f;


# direct methods
.method constructor <init>(Lcom/yelp/android/ba/f;Ljava/util/Map;Landroid/content/Context;Lcom/yelp/android/serializable/User;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/yelp/android/ba/g;->d:Lcom/yelp/android/ba/f;

    iput-object p2, p0, Lcom/yelp/android/ba/g;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/yelp/android/ba/g;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/yelp/android/ba/g;->c:Lcom/yelp/android/serializable/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 81
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->FeedFriendUser:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v1, p0, Lcom/yelp/android/ba/g;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/ba/g;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/yelp/android/ba/g;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/ba/g;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void
.end method
