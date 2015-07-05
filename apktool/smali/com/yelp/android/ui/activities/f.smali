.class Lcom/yelp/android/ui/activities/f;
.super Landroid/widget/BaseAdapter;
.source "ActivityBadges.java"

# interfaces
.implements Lcom/yelp/android/ui/util/j;


# instance fields
.field a:Landroid/view/LayoutInflater;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Badge;",
            ">;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Badge;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 138
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/f;->a:Landroid/view/LayoutInflater;

    .line 139
    iput-object p2, p0, Lcom/yelp/android/ui/activities/f;->b:Ljava/util/ArrayList;

    .line 140
    iput-boolean p3, p0, Lcom/yelp/android/ui/activities/f;->c:Z

    .line 141
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;ZLcom/yelp/android/ui/activities/e;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/f;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 3

    .prologue
    .line 182
    const v0, 0x7f020080

    const v1, 0x7f07026e

    const v2, 0x7f020081

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/yelp/android/ui/activities/f;->a(Landroid/widget/TextView;III)V

    .line 184
    return-void
.end method

.method private a(Landroid/widget/TextView;III)V
    .locals 1

    .prologue
    .line 192
    .line 196
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 197
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 201
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 202
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private b(Landroid/widget/TextView;)V
    .locals 3

    .prologue
    .line 187
    const v0, 0x7f020086

    const v1, 0x7f070061

    const v2, 0x7f020087

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/yelp/android/ui/activities/f;->a(Landroid/widget/TextView;III)V

    .line 189
    return-void
.end method


# virtual methods
.method public a(I)Lcom/yelp/android/serializable/Badge;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Badge;

    return-object v0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 146
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/f;->notifyDataSetInvalidated()V

    .line 147
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/activities/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/f;->a(I)Lcom/yelp/android/serializable/Badge;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 178
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const v6, 0x7f0203fc

    const/4 v5, 0x0

    .line 209
    if-nez p2, :cond_0

    .line 210
    iget-object v0, p0, Lcom/yelp/android/ui/activities/f;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030056

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 211
    new-instance v0, Lcom/yelp/android/ui/activities/g;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/g;-><init>(Landroid/view/View;)V

    .line 212
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 214
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/g;

    .line 215
    iget-object v1, p0, Lcom/yelp/android/ui/activities/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Badge;

    .line 216
    iget-object v2, v0, Lcom/yelp/android/ui/activities/g;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Badge;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Badge;->isNew()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    iget-object v2, v0, Lcom/yelp/android/ui/activities/g;->b:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/f;->b(Landroid/widget/TextView;)V

    .line 228
    :goto_0
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Badge;->isAssigned()Z

    move-result v2

    if-nez v2, :cond_3

    .line 229
    iget-object v0, v0, Lcom/yelp/android/ui/activities/g;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, v6}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageResource(I)V

    .line 248
    :goto_1
    return-object p2

    .line 220
    :cond_1
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Badge;->getExpirePercent()F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    .line 221
    iget-object v2, v0, Lcom/yelp/android/ui/activities/g;->b:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/f;->a(Landroid/widget/TextView;)V

    goto :goto_0

    .line 223
    :cond_2
    iget-object v2, v0, Lcom/yelp/android/ui/activities/g;->b:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 233
    :cond_3
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/yelp/android/ui/activities/g;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Badge;->getImageSmallPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 235
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Badge;->getImageSmallUrl()Ljava/lang/String;

    move-result-object v2

    .line 236
    if-eqz v2, :cond_5

    .line 237
    iget-object v3, v0, Lcom/yelp/android/ui/activities/g;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v3, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 242
    :cond_4
    :goto_2
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Badge;->getExpirePercent()F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_6

    .line 243
    iget-object v0, v0, Lcom/yelp/android/ui/activities/g;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Badge;->getExpireFadeTint()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 239
    :cond_5
    iget-object v2, v0, Lcom/yelp/android/ui/activities/g;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v2, v6}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageResource(I)V

    goto :goto_2

    .line 245
    :cond_6
    iget-object v0, v0, Lcom/yelp/android/ui/activities/g;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 161
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/f;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 168
    :goto_0
    return v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Badge;

    .line 165
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Badge;->isAssigned()Z

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    .line 166
    goto :goto_0

    :cond_1
    move v0, v1

    .line 168
    goto :goto_0
.end method
