.class public Lcom/yelp/android/ui/activities/camera/PreviewPhoto;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "PreviewPhoto.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 6

    .prologue
    .line 53
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->a(Landroid/content/Context;Ljava/io/File;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    const-string/jumbo v1, "extra.file_path"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string/jumbo v1, "extra.cleanup_file_on_back"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    const-string/jumbo v1, "extra.change_photo_text"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 79
    const-string/jumbo v1, "extra.confirm_photo_text"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 80
    const-string/jumbo v1, "extra.hide_buttons"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->YesOrNoPhoto:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 140
    const-string/jumbo v1, "extra.cleanup_file_on_back"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "extra.file_path"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 144
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->setResult(I)V

    .line 145
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    .line 146
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f03004c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->setContentView(I)V

    .line 88
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "extra.file_path"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    const v0, 0x7f0f0113

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 91
    invoke-static {p0}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 93
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.hide_buttons"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const v0, 0x7f0f01ba

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0704b0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->b(I)V

    .line 129
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->e()V

    .line 104
    const v0, 0x7f0f01bb

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.change_photo_text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    new-instance v1, Lcom/yelp/android/ui/activities/camera/PreviewPhoto$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto$1;-><init>(Lcom/yelp/android/ui/activities/camera/PreviewPhoto;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v0, 0x7f0f01bc

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 119
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.confirm_photo_text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v1, Lcom/yelp/android/ui/activities/camera/PreviewPhoto$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto$2;-><init>(Lcom/yelp/android/ui/activities/camera/PreviewPhoto;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
