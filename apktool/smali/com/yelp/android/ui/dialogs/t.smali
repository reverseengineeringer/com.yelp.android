.class Lcom/yelp/android/ui/dialogs/t;
.super Landroid/os/AsyncTask;
.source "DlgAddPhotoCaption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/io/File;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/t;->b:Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;

    iput-object p2, p0, Lcom/yelp/android/ui/dialogs/t;->a:Landroid/view/View;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/t;->a:Landroid/view/View;

    const v1, 0x7f0c00c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 96
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/dialogs/t;->a([Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 87
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/dialogs/t;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
