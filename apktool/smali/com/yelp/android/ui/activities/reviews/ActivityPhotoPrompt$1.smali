.class Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt$1;
.super Ljava/lang/Object;
.source "ActivityPhotoPrompt.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt$1;->a:Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt$1;->a:Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt$1;->a:Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/media/ActivityMediaContributionDelegate;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x426

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->startActivityForResult(Landroid/content/Intent;I)V

    .line 131
    return-void
.end method
