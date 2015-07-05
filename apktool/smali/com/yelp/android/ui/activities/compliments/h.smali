.class public final Lcom/yelp/android/ui/activities/compliments/h;
.super Ljava/lang/Object;
.source "SendCompliment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final a:Landroid/widget/EditText;

.field private final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lcom/yelp/android/ui/activities/compliments/h;->a:Landroid/widget/EditText;

    .line 235
    iput-object p2, p0, Lcom/yelp/android/ui/activities/compliments/h;->b:Landroid/view/View;

    .line 236
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    .prologue
    .line 242
    if-eqz p2, :cond_1

    .line 244
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/serializable/Compliment$ComplimentType;->valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/Compliment$ComplimentType;

    move-result-object v1

    .line 245
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/h;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/h;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 248
    const-string/jumbo v0, ""

    .line 249
    sget-object v3, Lcom/yelp/android/serializable/Compliment$ComplimentType;->NOTE:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    invoke-virtual {v1, v3}, Lcom/yelp/android/serializable/Compliment$ComplimentType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 250
    const v0, 0x7f070263

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v1, v1, Lcom/yelp/android/serializable/Compliment$ComplimentType;->mDescription:I

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/h;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/h;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_1
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    goto :goto_0
.end method
