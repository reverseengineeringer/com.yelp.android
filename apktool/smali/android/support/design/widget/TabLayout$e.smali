.class Landroid/support/design/widget/TabLayout$e;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/TabLayout;

.field private final b:Landroid/support/design/widget/TabLayout$c;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;Landroid/support/design/widget/TabLayout$c;)V
    .locals 4

    .prologue
    .line 1141
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    .line 1142
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1143
    iput-object p3, p0, Landroid/support/design/widget/TabLayout$e;->b:Landroid/support/design/widget/TabLayout$c;

    .line 1144
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1145
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;)I

    move-result v0

    invoke-static {p2, v0}, Landroid/support/v7/internal/widget/o;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$e;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1147
    :cond_0
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout;)I

    move-result v0

    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->c(Landroid/support/design/widget/TabLayout;)I

    move-result v1

    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->d(Landroid/support/design/widget/TabLayout;)I

    move-result v2

    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->e(Landroid/support/design/widget/TabLayout;)I

    move-result v3

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/view/ai;->b(Landroid/view/View;IIII)V

    .line 1149
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$e;->setGravity(I)V

    .line 1150
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->a()V

    .line 1151
    return-void
.end method

.method private a(Landroid/support/design/widget/TabLayout$c;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1259
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$c;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1260
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$c;->d()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1262
    if-eqz p3, :cond_0

    .line 1263
    if-eqz v0, :cond_2

    .line 1264
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1265
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1266
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$e;->setVisibility(I)V

    .line 1271
    :goto_0
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$c;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1274
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 1275
    :goto_1
    if-eqz p2, :cond_1

    .line 1276
    if-eqz v0, :cond_4

    .line 1277
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1278
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$c;->g()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1279
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1280
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$e;->setVisibility(I)V

    .line 1287
    :cond_1
    :goto_2
    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$c;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1288
    invoke-virtual {p0, p0}, Landroid/support/design/widget/TabLayout$e;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1293
    :goto_3
    return-void

    .line 1268
    :cond_2
    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1269
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1274
    goto :goto_1

    .line 1282
    :cond_4
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1283
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1290
    :cond_5
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout$e;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1291
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$e;->setLongClickable(Z)V

    goto :goto_3
.end method


# virtual methods
.method final a()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1200
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$e;->b:Landroid/support/design/widget/TabLayout$c;

    .line 1201
    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$c;->a()Landroid/view/View;

    move-result-object v2

    .line 1202
    if-eqz v2, :cond_8

    .line 1203
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1204
    if-eq v0, p0, :cond_1

    .line 1205
    if-eqz v0, :cond_0

    .line 1206
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1208
    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$e;->addView(Landroid/view/View;)V

    .line 1210
    :cond_1
    iput-object v2, p0, Landroid/support/design/widget/TabLayout$e;->e:Landroid/view/View;

    .line 1211
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1212
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1214
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1215
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1216
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1219
    :cond_3
    const v0, 0x1020014

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$e;->f:Landroid/widget/TextView;

    .line 1220
    const v0, 0x1020006

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$e;->g:Landroid/widget/ImageView;

    .line 1231
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->e:Landroid/view/View;

    if-nez v0, :cond_a

    .line 1233
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/widget/ImageView;

    if-nez v0, :cond_4

    .line 1234
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/yelp/android/a/a$g;->design_layout_tab_icon:I

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1236
    invoke-virtual {p0, v0, v4}, Landroid/support/design/widget/TabLayout$e;->addView(Landroid/view/View;I)V

    .line 1237
    iput-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/widget/ImageView;

    .line 1239
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 1240
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/yelp/android/a/a$g;->design_layout_tab_text:I

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1242
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$e;->addView(Landroid/view/View;)V

    .line 1243
    iput-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    .line 1245
    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v3}, Landroid/support/design/widget/TabLayout;->h(Landroid/support/design/widget/TabLayout;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1246
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->i(Landroid/support/design/widget/TabLayout;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1247
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v2}, Landroid/support/design/widget/TabLayout;->i(Landroid/support/design/widget/TabLayout;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1249
    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0, v2}, Landroid/support/design/widget/TabLayout$e;->a(Landroid/support/design/widget/TabLayout$c;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 1256
    :cond_7
    :goto_1
    return-void

    .line 1223
    :cond_8
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->e:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1224
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$e;->removeView(Landroid/view/View;)V

    .line 1225
    iput-object v3, p0, Landroid/support/design/widget/TabLayout$e;->e:Landroid/view/View;

    .line 1227
    :cond_9
    iput-object v3, p0, Landroid/support/design/widget/TabLayout$e;->f:Landroid/widget/TextView;

    .line 1228
    iput-object v3, p0, Landroid/support/design/widget/TabLayout$e;->g:Landroid/widget/ImageView;

    goto :goto_0

    .line 1252
    :cond_a
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->f:Landroid/widget/TextView;

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 1253
    :cond_b
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->f:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$e;->g:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0, v2}, Landroid/support/design/widget/TabLayout$e;->a(Landroid/support/design/widget/TabLayout$c;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_1
.end method

.method public b()Landroid/support/design/widget/TabLayout$c;
    .locals 1

    .prologue
    .line 1316
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->b:Landroid/support/design/widget/TabLayout$c;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1172
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1174
    const-class v0, Landroid/support/v7/app/ActionBar$b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1175
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1180
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1182
    const-class v0, Landroid/support/v7/app/ActionBar$b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1183
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1297
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1298
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$e;->getLocationOnScreen([I)V

    .line 1300
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1301
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getWidth()I

    move-result v2

    .line 1302
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getHeight()I

    move-result v3

    .line 1303
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1305
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$e;->b:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$c;->g()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1308
    const/16 v5, 0x31

    aget v0, v0, v6

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    div-int/lit8 v2, v4, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v5, v0, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1311
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1312
    const/4 v0, 0x1

    return v0
.end method

.method public onMeasure(II)V
    .locals 3

    .prologue
    .line 1187
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1189
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getMeasuredWidth()I

    move-result v0

    .line 1190
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout;->f(Landroid/support/design/widget/TabLayout;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout;->g(Landroid/support/design/widget/TabLayout;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1192
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout;->f(Landroid/support/design/widget/TabLayout;)I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    invoke-static {v2}, Landroid/support/design/widget/TabLayout;->g(Landroid/support/design/widget/TabLayout;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/k;->a(III)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1195
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1197
    :cond_1
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .prologue
    .line 1155
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_2

    const/4 v0, 0x1

    .line 1156
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1157
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1158
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$e;->sendAccessibilityEvent(I)V

    .line 1160
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1163
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1164
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1167
    :cond_1
    return-void

    .line 1155
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
