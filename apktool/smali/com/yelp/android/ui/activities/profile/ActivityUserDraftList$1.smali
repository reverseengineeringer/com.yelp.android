.class Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityUserDraftList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$1;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 84
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewBroadcast;

    .line 85
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->e()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v1

    .line 87
    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewState;->DRAFTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v1, v2, :cond_0

    .line 88
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$1;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)Lcom/yelp/android/ui/activities/profile/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/profile/c;->a(Ljava/lang/String;)Lcom/yelp/android/serializable/ReviewDraft;

    move-result-object v1

    .line 90
    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->a()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/ReviewDraft;->a(I)V

    .line 92
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/ReviewDraft;->a(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$1;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)Lcom/yelp/android/ui/activities/profile/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/c;->notifyDataSetChanged()V

    .line 96
    :cond_0
    return-void
.end method
