.class Lcom/yelp/android/ui/util/bx;
.super Ljava/lang/Object;
.source "SlightlyLessBrokenLinearLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;

.field private c:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/yelp/android/ui/util/bx;->b:Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;

    iput-object p2, p0, Lcom/yelp/android/ui/util/bx;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 327
    iget-object v0, p0, Lcom/yelp/android/ui/util/bx;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/bx;->b:Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/util/bx;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/bx;->c:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/yelp/android/ui/util/bx;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/yelp/android/ui/util/bx;->b:Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 352
    return-void

    .line 331
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 332
    iget-object v0, p0, Lcom/yelp/android/ui/util/bx;->b:Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->getId()I

    move-result v0

    .line 333
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const-string/jumbo v0, ""

    .line 336
    :goto_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not find a method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/util/bx;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "(View) in the activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/util/bx;->b:Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;

    invoke-virtual {v4}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for onClick handler"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " on view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 333
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " with id \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/util/bx;->b:Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;

    invoke-virtual {v3}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 345
    :catch_1
    move-exception v0

    .line 346
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Could not execute non public method of the activity"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 348
    :catch_2
    move-exception v0

    .line 349
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Could not execute method of the activity"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
