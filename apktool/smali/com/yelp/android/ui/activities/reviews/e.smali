.class Lcom/yelp/android/ui/activities/reviews/e;
.super Ljava/lang/Object;
.source "ActivityPhotoPrompt.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/e;->a:Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 288
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/e;->a:Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->finish()V

    .line 291
    :cond_0
    return-void
.end method
