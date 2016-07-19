.class Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$2;
.super Ljava/lang/Object;
.source "AddCaptionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$2;->a:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 222
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$2;->a:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->a(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/as;->b(Landroid/view/View;)V

    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$2;->a:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$2;->a:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$2;->a:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->c(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$2;->a:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->d(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x42d

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 227
    return-void
.end method
