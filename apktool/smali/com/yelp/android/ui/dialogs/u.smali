.class Lcom/yelp/android/ui/dialogs/u;
.super Ljava/lang/Object;
.source "DlgAddPhotoCaption.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/yelp/android/appdata/webrequests/m;

.field final synthetic c:Lcom/yelp/android/ui/activities/support/YelpActivity;

.field final synthetic d:Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;ZLcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/ui/activities/support/YelpActivity;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/u;->d:Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;

    iput-boolean p2, p0, Lcom/yelp/android/ui/dialogs/u;->a:Z

    iput-object p3, p0, Lcom/yelp/android/ui/dialogs/u;->b:Lcom/yelp/android/appdata/webrequests/m;

    iput-object p4, p0, Lcom/yelp/android/ui/dialogs/u;->c:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 146
    .line 148
    :try_start_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/dialogs/u;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 149
    :goto_0
    new-instance v1, Lcom/yelp/android/appdata/webrequests/gv;

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/u;->d:Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;

    invoke-static {v2}, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->a(Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/u;->d:Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;

    invoke-virtual {v3}, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/dialogs/u;->b:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/yelp/android/appdata/webrequests/gv;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/yelp/android/appdata/webrequests/m;)V

    .line 151
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/gv;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/u;->c:Lcom/yelp/android/ui/activities/support/YelpActivity;

    const v2, 0x7f07064c

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 157
    :goto_1
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/u;->d:Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->c()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/u;->c:Lcom/yelp/android/ui/activities/support/YelpActivity;

    const-string/jumbo v2, "Error while uploading profile photo"

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/u;->c:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const v1, 0x7f070251

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    goto :goto_1
.end method
