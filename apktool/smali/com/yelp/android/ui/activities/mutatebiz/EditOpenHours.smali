.class public Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "EditOpenHours.java"

# interfaces
.implements Lcom/yelp/android/ui/util/al;


# instance fields
.field private a:Lcom/yelp/android/ui/util/ImageInputHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    const-string/jumbo v1, "DESCRIPTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 47
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 48
    return-object v0
.end method

.method public static a(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 52
    const-string/jumbo v0, "LISTED_HOURS"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 53
    return-object p0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;)Lcom/yelp/android/ui/util/ImageInputHelper;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a:Lcom/yelp/android/ui/util/ImageInputHelper;

    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const-string/jumbo v0, "DESCRIPTION"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 105
    const v0, 0x7f0c0119

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 106
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "DESCRIPTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    const v1, 0x7f070128

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 110
    :cond_0
    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/x;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/x;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 79
    new-instance v0, Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/n;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/util/ImageInputHelper;-><init>(Lcom/yelp/android/appdata/n;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a:Lcom/yelp/android/ui/util/ImageInputHelper;

    .line 80
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ImageInputHelper;->b(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a:Lcom/yelp/android/ui/util/ImageInputHelper;

    const v1, 0x7f0704d2

    const/16 v2, 0x64

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(ILandroid/app/PendingIntent;)V

    .line 85
    :cond_0
    const v0, 0x7f0c00c6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 86
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 87
    const v1, 0x7f07012a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 90
    :cond_1
    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/w;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/w;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->hideLoadingDialog()V

    .line 163
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)Z
    .locals 3

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->hideLoadingDialog()V

    .line 168
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 169
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 170
    if-eqz v1, :cond_0

    .line 171
    new-instance v2, Ljava/io/File;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 177
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 178
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 179
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->setResult(ILandroid/content/Intent;)V

    .line 180
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->finish()V

    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessEditHours:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 124
    sparse-switch p1, :sswitch_data_0

    .line 154
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 158
    :cond_1
    :goto_1
    return-void

    .line 126
    :sswitch_0
    if-ne p2, v3, :cond_1

    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 128
    const-string/jumbo v1, "DESCRIPTION"

    invoke-static {p3}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHoursDescription;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v3, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->setResult(ILandroid/content/Intent;)V

    .line 131
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->finish()V

    goto :goto_1

    .line 135
    :sswitch_1
    if-ne p2, v3, :cond_1

    .line 136
    const v0, 0x7f0700c2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->showLoadingDialog(I)V

    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0, p3, p0}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/content/Intent;Lcom/yelp/android/ui/util/al;)Landroid/os/AsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 141
    :sswitch_2
    if-ne p2, v3, :cond_0

    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->a()V

    .line 143
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->setResult(ILandroid/content/Intent;)V

    .line 146
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 147
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 150
    :cond_2
    const v0, 0x7f0c00c6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 151
    const v1, 0x7f07054f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 124
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0x65 -> :sswitch_0
        0x12c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->setContentView(I)V

    .line 62
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a()V

    .line 63
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "dialog_photo"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;

    .line 67
    if-eqz v0, :cond_0

    .line 68
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v1, p0}, Lcom/yelp/android/ui/util/ImageInputHelper;->b(Landroid/app/Activity;)Lcom/yelp/android/ui/util/an;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->a(Lcom/yelp/android/ui/dialogs/as;)V

    .line 70
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method
