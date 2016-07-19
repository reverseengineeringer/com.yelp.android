.class Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt$3;
.super Ljava/lang/Object;
.source "ActivityPhotoPrompt.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->b()V
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
    .line 292
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt$3;->a:Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 295
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt$3;->a:Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityPhotoPrompt;->a()V

    .line 298
    :cond_0
    return-void
.end method
