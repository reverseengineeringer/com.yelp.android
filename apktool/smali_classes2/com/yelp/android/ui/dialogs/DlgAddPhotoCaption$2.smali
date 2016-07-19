.class Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption$2;
.super Ljava/lang/Object;
.source "DlgAddPhotoCaption.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Lcom/yelp/android/ui/activities/support/YelpActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

.field final synthetic c:Lcom/yelp/android/ui/activities/support/YelpActivity;

.field final synthetic d:Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;ZLcom/yelp/android/appdata/webrequests/ApiRequest$b;Lcom/yelp/android/ui/activities/support/YelpActivity;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption$2;->d:Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;

    iput-boolean p2, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption$2;->a:Z

    iput-object p3, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption$2;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    iput-object p4, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption$2;->c:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 138
    .line 140
    :try_start_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption$2;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 141
    :goto_0
    new-instance v1, Lcom/yelp/android/appdata/webrequests/fk;

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption$2;->d:Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;

    invoke-static {v2}, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->a(Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption$2;->d:Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;

    invoke-virtual {v3}, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption$2;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/yelp/android/appdata/webrequests/fk;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 147
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/fk;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption$2;->c:Lcom/yelp/android/ui/activities/support/YelpActivity;

    const v2, 0x7f070628

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 155
    :goto_1
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption$2;->d:Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->c()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption$2;->c:Lcom/yelp/android/ui/activities/support/YelpActivity;

    const-string/jumbo v2, "Error while uploading profile photo"

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption$2;->c:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const v1, 0x7f0702aa

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    goto :goto_1
.end method
