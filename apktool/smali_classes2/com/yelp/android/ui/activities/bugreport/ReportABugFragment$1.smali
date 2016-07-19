.class Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment$1;
.super Ljava/lang/Object;
.source "ReportABugFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment$1;->a:Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment$1;->a:Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->l()V

    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment$1;->a:Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->b(Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;)V

    .line 178
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment$1;->a:Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;

    const v2, 0x7f0704f2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment$1;->a:Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->c(Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 182
    iget-object v1, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment$1;->a:Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, "bug_reported_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
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
    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment$1;->a:Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->l()V

    .line 170
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment$1;->a:Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->a(Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;)V

    .line 171
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 172
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 166
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment$1;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
