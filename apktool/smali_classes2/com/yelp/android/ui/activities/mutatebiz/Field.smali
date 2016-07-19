.class public Lcom/yelp/android/ui/activities/mutatebiz/Field;
.super Lcom/yelp/android/ui/widgets/SpannedTextView;
.source "Field.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/mutatebiz/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/mutatebiz/Field$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/os/Bundle;

.field private b:I

.field private c:I

.field private i:I

.field private j:Lcom/yelp/android/ui/activities/mutatebiz/Field$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 92
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/widgets/SpannedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    .line 84
    sget-object v0, Lcom/yelp/android/b$a;->AddBusinessField:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->setAttributes(Landroid/content/res/TypedArray;)V

    .line 88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.attachment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.attachment"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 117
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a(Ljava/lang/CharSequence;)V

    .line 118
    return-void
.end method

.method protected a(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 249
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->b:I

    .line 250
    :goto_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    iget v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->i:I

    .line 254
    :cond_1
    if-eqz v0, :cond_2

    .line 255
    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->j:Lcom/yelp/android/ui/activities/mutatebiz/Field$a;

    if-eqz v0, :cond_3

    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->j:Lcom/yelp/android/ui/activities/mutatebiz/Field$a;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->b()Z

    move-result v1

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/Field$a;->a(ZZ)V

    .line 260
    :cond_3
    return-void

    .line 249
    :cond_4
    iget v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->c:I

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.data"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->setText(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.data"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->setText(Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.data"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->setText(Ljava/lang/CharSequence;)V

    .line 142
    return-void
.end method

.method public varargs a(Ljava/lang/CharSequence;[Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.data"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 153
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->setText(Ljava/lang/CharSequence;)V

    .line 154
    return-void
.end method

.method public getAttachment()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.attachment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getCharSequenceData()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getParcelableArrayData()[Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public getParcelableArrayListData()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getParcelableData()Landroid/os/Parcelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public getSerializable()Ljava/io/Serializable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 271
    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    .line 272
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.data.parent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/yelp/android/ui/widgets/SpannedTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 273
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 264
    invoke-super {p0}, Lcom/yelp/android/ui/widgets/SpannedTextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v2, "key.data.parent"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 266
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 242
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yelp/android/ui/widgets/SpannedTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 243
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a(Ljava/lang/CharSequence;)V

    .line 246
    :cond_0
    return-void
.end method

.method setAttributes(Landroid/content/res/TypedArray;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->b:I

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->c:I

    .line 102
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->i:I

    .line 103
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->setHint(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a(Ljava/lang/CharSequence;Landroid/os/Parcelable;)V

    .line 105
    return-void
.end method

.method public setListener(Lcom/yelp/android/ui/activities/mutatebiz/Field$a;)V
    .locals 3

    .prologue
    .line 108
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->j:Lcom/yelp/android/ui/activities/mutatebiz/Field$a;

    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->j:Lcom/yelp/android/ui/activities/mutatebiz/Field$a;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->j:Lcom/yelp/android/ui/activities/mutatebiz/Field$a;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->b()Z

    move-result v1

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/Field$a;->a(ZZ)V

    .line 112
    :cond_0
    return-void
.end method
