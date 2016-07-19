.class final Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$c;
.super Ljava/lang/Object;
.source "AddCaptionFragment.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$c;->a:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$1;)V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$c;-><init>(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)V

    return-void
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 4

    .prologue
    .line 340
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v0, p2

    .line 341
    :goto_0
    if-ge v0, v1, :cond_1

    .line 342
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 346
    :goto_1
    return v0

    .line 341
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 346
    goto :goto_1
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 3

    .prologue
    .line 351
    move v0, p2

    :goto_0
    if-lez v0, :cond_1

    .line 352
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 356
    :goto_1
    return v0

    .line 351
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 356
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 361
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 362
    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_0

    .line 363
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 364
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 367
    :cond_0
    return-object p1
.end method
