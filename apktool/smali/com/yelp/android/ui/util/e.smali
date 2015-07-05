.class public Lcom/yelp/android/ui/util/e;
.super Ljava/lang/Object;
.source "AndroidToaster.java"

# interfaces
.implements Lcom/yelp/android/ui/util/ci;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-nez p1, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ui/util/e;->a:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/util/e;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 32
    return-void
.end method

.method public a(Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/ui/util/e;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 28
    return-void
.end method
