.class public Lcom/yelp/android/ui/activities/camera/PreviewPhoto;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "PreviewPhoto.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 104
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    const-string/jumbo v1, "file"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string/jumbo v1, "cleanup_file_on_back"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    const-string/jumbo v1, "change_photo_text"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 51
    const-string/jumbo v1, "confirm_photo_text"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 52
    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->YesOrNoPhoto:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 96
    const-string/jumbo v1, "cleanup_file_on_back"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 100
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->setResult(I)V

    .line 101
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    .line 102
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->setContentView(I)V

    .line 59
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    const v0, 0x7f0c00c6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 61
    new-instance v2, Lcom/yelp/android/ui/activities/camera/k;

    invoke-direct {v2, v0}, Lcom/yelp/android/ui/activities/camera/k;-><init>(Landroid/widget/ImageView;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/activities/camera/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    const v0, 0x7f0c018a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "change_photo_text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    new-instance v1, Lcom/yelp/android/ui/activities/camera/i;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/camera/i;-><init>(Lcom/yelp/android/ui/activities/camera/PreviewPhoto;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v0, 0x7f0c018b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "confirm_photo_text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    new-instance v1, Lcom/yelp/android/ui/activities/camera/j;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/camera/j;-><init>(Lcom/yelp/android/ui/activities/camera/PreviewPhoto;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method
