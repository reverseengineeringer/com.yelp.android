.class public Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "EditPhotoCaption.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$b;


# instance fields
.field private a:Lcom/yelp/android/serializable/YelpBusiness;

.field private b:Lcom/yelp/android/serializable/Photo;

.field private c:Ljava/lang/String;

.field private d:Landroid/app/AlertDialog;

.field private e:Lcom/yelp/android/appdata/webrequests/bg;

.field private final f:Lcom/yelp/android/appdata/webrequests/core/c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 174
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption$1;-><init>(Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->f:Lcom/yelp/android/appdata/webrequests/core/c$a;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->d:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/Photo;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    const-string/jumbo v1, "extra.photo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 58
    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 59
    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->c()V

    .line 152
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPhotoCaptionEditSaved:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "photo_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->b:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Photo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 155
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bg;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->b:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Photo;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->f:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/bg;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->e:Lcom/yelp/android/appdata/webrequests/bg;

    .line 156
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->e:Lcom/yelp/android/appdata/webrequests/bg;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bg;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 157
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;)Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->b:Lcom/yelp/android/serializable/Photo;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->d:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/yelp/android/ui/dialogs/e;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->d:Landroid/app/AlertDialog;

    .line 162
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->d:Landroid/app/AlertDialog;

    const v1, 0x7f0704a9

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->d:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 166
    return-void
.end method

.method private d()Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->b:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->b:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Photo;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->b:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Photo;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->c:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 116
    const v1, 0x7f070485

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->showInfoDialog(Ljava/lang/CharSequence;)V

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->a()V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 130
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPhotoCaptionEditCanceled:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "photo_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->b:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Photo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 133
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    .line 134
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x7f0f020d

    .line 64
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 66
    const-string/jumbo v0, "extra.photo"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->b:Lcom/yelp/android/serializable/Photo;

    .line 67
    const-string/jumbo v0, "extra.business"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->a:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    :goto_0
    if-eqz p1, :cond_0

    .line 75
    const-string/jumbo v0, "saved_caption"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->c:Ljava/lang/String;

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 78
    if-nez v0, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->d()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/o;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 84
    :cond_1
    return-void

    .line 71
    :cond_2
    const v0, 0x7f070274

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->setTitle(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->d:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 102
    :cond_0
    const-string/jumbo v0, "edit_caption"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->e:Lcom/yelp/android/appdata/webrequests/bg;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 103
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 88
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 89
    const-string/jumbo v0, "edit_caption"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->e:Lcom/yelp/android/appdata/webrequests/bg;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->f:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/bg;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->e:Lcom/yelp/android/appdata/webrequests/bg;

    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->e:Lcom/yelp/android/appdata/webrequests/bg;

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->c()V

    .line 94
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 108
    const-string/jumbo v0, "saved_caption"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public onYesNoDialogSelection(ZI)V
    .locals 2

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 143
    :cond_0
    return-void
.end method
