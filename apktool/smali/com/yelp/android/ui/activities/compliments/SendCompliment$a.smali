.class public final Lcom/yelp/android/ui/activities/compliments/SendCompliment$a;
.super Ljava/lang/Object;
.source "SendCompliment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/compliments/SendCompliment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/EditText;

.field private final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p1, p0, Lcom/yelp/android/ui/activities/compliments/SendCompliment$a;->a:Landroid/widget/EditText;

    .line 237
    iput-object p2, p0, Lcom/yelp/android/ui/activities/compliments/SendCompliment$a;->b:Landroid/view/View;

    .line 238
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    .prologue
    .line 243
    if-eqz p2, :cond_1

    .line 245
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/serializable/Compliment$ComplimentType;->valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/Compliment$ComplimentType;

    move-result-object v1

    .line 246
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/SendCompliment$a;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/SendCompliment$a;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 249
    const-string/jumbo v0, ""

    .line 250
    sget-object v3, Lcom/yelp/android/serializable/Compliment$ComplimentType;->NOTE:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    invoke-virtual {v1, v3}, Lcom/yelp/android/serializable/Compliment$ComplimentType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 251
    const v0, 0x7f0702ba

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v1, v1, Lcom/yelp/android/serializable/Compliment$ComplimentType;->mDescription:I

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/SendCompliment$a;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/SendCompliment$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_1
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    goto :goto_0
.end method
