.class Lcom/flipboard/bottomsheet/commons/a$b;
.super Landroid/widget/BaseAdapter;
.source "IntentPickerSheetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/commons/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flipboard/bottomsheet/commons/a$b$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flipboard/bottomsheet/commons/a$a;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroid/view/LayoutInflater;

.field final synthetic c:Lcom/flipboard/bottomsheet/commons/a;

.field private d:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/flipboard/bottomsheet/commons/a;Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Lcom/flipboard/bottomsheet/commons/a$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/a$b;->c:Lcom/flipboard/bottomsheet/commons/a;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 189
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/a$b;->b:Landroid/view/LayoutInflater;

    .line 190
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/a$b;->d:Landroid/content/pm/PackageManager;

    .line 191
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/a$b;->d:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/flipboard/bottomsheet/commons/a$b;->a:Ljava/util/List;

    .line 193
    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/a$b;->a:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 195
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v3, Lcom/flipboard/bottomsheet/commons/a$a;

    iget-object v4, p0, Lcom/flipboard/bottomsheet/commons/a$b;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v3, v0, v4, v2}, Lcom/flipboard/bottomsheet/commons/a$a;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Landroid/content/ComponentName;)V

    .line 197
    invoke-static {p1}, Lcom/flipboard/bottomsheet/commons/a;->b(Lcom/flipboard/bottomsheet/commons/a;)Lcom/flipboard/bottomsheet/commons/a$c;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/flipboard/bottomsheet/commons/a$c;->a(Lcom/flipboard/bottomsheet/commons/a$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/a$b;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/a$b;->a:Ljava/util/List;

    invoke-static {p1}, Lcom/flipboard/bottomsheet/commons/a;->c(Lcom/flipboard/bottomsheet/commons/a;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 202
    return-void
.end method

.method static synthetic a(Lcom/flipboard/bottomsheet/commons/a$b;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/a$b;->d:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/flipboard/bottomsheet/commons/a$a;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/a$b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flipboard/bottomsheet/commons/a$a;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/a$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/commons/a$b;->a(I)Lcom/flipboard/bottomsheet/commons/a$a;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/a$b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flipboard/bottomsheet/commons/a$a;

    iget-object v0, v0, Lcom/flipboard/bottomsheet/commons/a$a;->c:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 223
    if-nez p2, :cond_1

    .line 224
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/a$b;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/yelp/android/cq/a$d;->sheet_grid_item:I

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 225
    new-instance v0, Lcom/flipboard/bottomsheet/commons/a$b$a;

    invoke-direct {v0, p0, p2}, Lcom/flipboard/bottomsheet/commons/a$b$a;-><init>(Lcom/flipboard/bottomsheet/commons/a$b;Landroid/view/View;)V

    .line 226
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/a$b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flipboard/bottomsheet/commons/a$a;

    .line 232
    invoke-static {v0}, Lcom/flipboard/bottomsheet/commons/a$a;->a(Lcom/flipboard/bottomsheet/commons/a$a;)Landroid/os/AsyncTask;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 233
    invoke-static {v0}, Lcom/flipboard/bottomsheet/commons/a$a;->a(Lcom/flipboard/bottomsheet/commons/a$a;)Landroid/os/AsyncTask;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 234
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/flipboard/bottomsheet/commons/a$a;->a(Lcom/flipboard/bottomsheet/commons/a$a;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 236
    :cond_0
    iget-object v2, v0, Lcom/flipboard/bottomsheet/commons/a$a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 237
    iget-object v2, v1, Lcom/flipboard/bottomsheet/commons/a$b$a;->a:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/flipboard/bottomsheet/commons/a$a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    :goto_1
    iget-object v1, v1, Lcom/flipboard/bottomsheet/commons/a$b$a;->b:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/flipboard/bottomsheet/commons/a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    return-object p2

    .line 228
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flipboard/bottomsheet/commons/a$b$a;

    move-object v1, v0

    goto :goto_0

    .line 239
    :cond_2
    iget-object v2, v1, Lcom/flipboard/bottomsheet/commons/a$b$a;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/flipboard/bottomsheet/commons/a$b;->c:Lcom/flipboard/bottomsheet/commons/a;

    invoke-virtual {v3}, Lcom/flipboard/bottomsheet/commons/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yelp/android/cq/a$a;->divider_gray:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    new-instance v2, Lcom/flipboard/bottomsheet/commons/a$b$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/flipboard/bottomsheet/commons/a$b$1;-><init>(Lcom/flipboard/bottomsheet/commons/a$b;Lcom/flipboard/bottomsheet/commons/a$a;Lcom/flipboard/bottomsheet/commons/a$b$a;)V

    invoke-static {v0, v2}, Lcom/flipboard/bottomsheet/commons/a$a;->a(Lcom/flipboard/bottomsheet/commons/a$a;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 253
    invoke-static {v0}, Lcom/flipboard/bottomsheet/commons/a$a;->a(Lcom/flipboard/bottomsheet/commons/a$a;)Landroid/os/AsyncTask;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method
