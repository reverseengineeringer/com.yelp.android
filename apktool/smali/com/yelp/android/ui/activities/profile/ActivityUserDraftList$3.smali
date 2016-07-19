.class Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$3;
.super Ljava/lang/Object;
.source "ActivityUserDraftList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 216
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$3;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$3;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->c(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)Lcom/yelp/android/serializable/ReviewDraft;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/ReviewDraft;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$3;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    new-instance v2, Lcom/yelp/android/appdata/webrequests/du;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$3;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->d(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)Lcom/yelp/android/appdata/webrequests/core/c$a;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/yelp/android/appdata/webrequests/du;-><init>(Ljava/util/ArrayList;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;Lcom/yelp/android/appdata/webrequests/du;)Lcom/yelp/android/appdata/webrequests/du;

    .line 225
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$3;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->showLoadingDialog()V

    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList$3;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;->e(Lcom/yelp/android/ui/activities/profile/ActivityUserDraftList;)Lcom/yelp/android/appdata/webrequests/du;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/du;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 227
    return-void
.end method
