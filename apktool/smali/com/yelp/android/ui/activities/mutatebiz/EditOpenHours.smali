.class public Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "EditOpenHours.java"

# interfaces
.implements Lcom/yelp/android/ui/util/ImageInputHelper$c;


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
    .line 202
    const-string/jumbo v0, "DESCRIPTION"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 114
    const v0, 0x7f0f00ef

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "DESCRIPTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    const v1, 0x7f0701a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 119
    :cond_0
    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours$2;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 80
    new-instance v0, Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/f;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/util/ImageInputHelper;-><init>(Lcom/yelp/android/appdata/f;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a:Lcom/yelp/android/ui/util/ImageInputHelper;

    .line 81
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ImageInputHelper;->b(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a:Lcom/yelp/android/ui/util/ImageInputHelper;

    const v2, 0x7f0704ec

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v0, v4}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(ILandroid/app/PendingIntent;)V

    .line 88
    :cond_0
    const v0, 0x7f0f0113

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 90
    const v1, 0x7f0701a8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 93
    :cond_1
    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours$1;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->hideLoadingDialog()V

    .line 174
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)Z
    .locals 3

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->hideLoadingDialog()V

    .line 179
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_0

    .line 182
    new-instance v2, Ljava/io/File;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 188
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 189
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 190
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->setResult(ILandroid/content/Intent;)V

    .line 191
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->finish()V

    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessEditHours:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
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

    .line 136
    sparse-switch p1, :sswitch_data_0

    .line 166
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 169
    :cond_1
    :goto_1
    return-void

    .line 138
    :sswitch_0
    if-ne p2, v3, :cond_1

    .line 139
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 140
    const-string/jumbo v1, "DESCRIPTION"

    invoke-static {p3}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHoursDescription;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v3, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->setResult(ILandroid/content/Intent;)V

    .line 143
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->finish()V

    goto :goto_1

    .line 147
    :sswitch_1
    if-ne p2, v3, :cond_1

    .line 148
    const v0, 0x7f070147

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->showLoadingDialog(I)V

    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0, p3, p0}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/content/Intent;Lcom/yelp/android/ui/util/ImageInputHelper$c;)Landroid/os/AsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 153
    :sswitch_2
    if-ne p2, v3, :cond_0

    .line 154
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->a()V

    .line 155
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->setResult(ILandroid/content/Intent;)V

    .line 158
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 159
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 162
    :cond_2
    const v0, 0x7f0f0113

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 163
    const v1, 0x7f07054f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 136
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
    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->setContentView(I)V

    .line 62
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a()V

    .line 63
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "dialog_photo"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;

    .line 68
    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v1, p0}, Lcom/yelp/android/ui/util/ImageInputHelper;->b(Landroid/app/Activity;)Lcom/yelp/android/ui/util/ImageInputHelper$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->a(Lcom/yelp/android/ui/dialogs/ListDialogFragment$a;)V

    .line 71
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/os/Bundle;)V

    .line 77
    return-void
.end method
