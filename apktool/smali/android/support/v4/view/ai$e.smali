.class Landroid/support/v4/view/ai$e;
.super Landroid/support/v4/view/ai$d;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# static fields
.field static b:Ljava/lang/reflect/Field;

.field static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1154
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/view/ai$e;->c:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1152
    invoke-direct {p0}, Landroid/support/v4/view/ai$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 1

    .prologue
    .line 1178
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/an;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 1180
    return-void

    .line 1178
    :cond_0
    invoke-virtual {p2}, Landroid/support/v4/view/a;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1221
    invoke-static {p1, p2}, Landroid/support/v4/view/an;->a(Landroid/view/View;Z)V

    .line 1222
    return-void
.end method

.method public a(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 1157
    invoke-static {p1, p2}, Landroid/support/v4/view/an;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1184
    sget-boolean v2, Landroid/support/v4/view/ai$e;->c:Z

    if-eqz v2, :cond_0

    .line 1201
    :goto_0
    return v1

    .line 1187
    :cond_0
    sget-object v2, Landroid/support/v4/view/ai$e;->b:Ljava/lang/reflect/Field;

    if-nez v2, :cond_1

    .line 1189
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string/jumbo v3, "mAccessibilityDelegate"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/support/v4/view/ai$e;->b:Ljava/lang/reflect/Field;

    .line 1191
    sget-object v2, Landroid/support/v4/view/ai$e;->b:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1198
    :cond_1
    :try_start_1
    sget-object v2, Landroid/support/v4/view/ai$e;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    if-eqz v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    .line 1192
    :catch_0
    move-exception v2

    .line 1193
    sput-boolean v0, Landroid/support/v4/view/ai$e;->c:Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1198
    goto :goto_1

    .line 1199
    :catch_1
    move-exception v2

    .line 1200
    sput-boolean v0, Landroid/support/v4/view/ai$e;->c:Z

    goto :goto_0
.end method

.method public b(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 1161
    invoke-static {p1, p2}, Landroid/support/v4/view/an;->b(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public u(Landroid/view/View;)Landroid/support/v4/view/az;
    .locals 2

    .prologue
    .line 1207
    iget-object v0, p0, Landroid/support/v4/view/ai$e;->a:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 1208
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ai$e;->a:Ljava/util/WeakHashMap;

    .line 1211
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ai$e;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/az;

    .line 1212
    if-nez v0, :cond_1

    .line 1213
    new-instance v0, Landroid/support/v4/view/az;

    invoke-direct {v0, p1}, Landroid/support/v4/view/az;-><init>(Landroid/view/View;)V

    .line 1214
    iget-object v1, p0, Landroid/support/v4/view/ai$e;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    :cond_1
    return-object v0
.end method
