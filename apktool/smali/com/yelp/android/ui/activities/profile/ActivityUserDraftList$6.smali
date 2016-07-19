.class Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$6;
.super Ljava/lang/Object;
.source "ActivityUserDraftList.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/PanelError$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;
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
    .line 288
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$6;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public q_()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$6;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$6;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewSuggestions;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->startActivity(Landroid/content/Intent;)V

    .line 295
    return-void
.end method
