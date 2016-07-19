.class Lcom/yelp/android/ui/n;
.super Ljava/lang/Object;
.source "ActivityMonocle.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    iput p1, p0, Lcom/yelp/android/ui/n;->a:I

    .line 538
    iput-object p2, p0, Lcom/yelp/android/ui/n;->b:Ljava/lang/Object;

    .line 539
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 543
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "relayout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    array-length v2, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p3, v1

    .line 545
    instance-of v3, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_1

    .line 546
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/yelp/android/ui/n;->a:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/n;->b:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 544
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
