.class Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$3;
.super Ljava/lang/Object;
.source "AddBusinessPhoto.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$3;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$3;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->setResult(I)V

    .line 737
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto$3;->a:Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->finish()V

    .line 738
    return-void
.end method
