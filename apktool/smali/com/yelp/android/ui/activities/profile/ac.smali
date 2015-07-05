.class Lcom/yelp/android/ui/activities/profile/ac;
.super Ljava/lang/Object;
.source "UserProfileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/User;

.field final synthetic b:Lcom/yelp/android/ui/activities/profile/UserProfileView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/UserProfileView;Lcom/yelp/android/serializable/User;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/ac;->b:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/profile/ac;->a:Lcom/yelp/android/serializable/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 363
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->ProfileNewConversation:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 365
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ac;->b:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ac;->b:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/ac;->a:Lcom/yelp/android/serializable/User;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/messaging/ActivityComposeMessage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x406

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 368
    return-void
.end method
