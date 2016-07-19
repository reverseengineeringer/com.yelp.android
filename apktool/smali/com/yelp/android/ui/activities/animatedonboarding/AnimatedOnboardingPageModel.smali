.class public final enum Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;
.super Ljava/lang/Enum;
.source "AnimatedOnboardingPageModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

.field public static final enum PAGE_FOUR:Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

.field public static final enum PAGE_ONE:Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

.field public static final enum PAGE_SIGN_UP:Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

.field public static final enum PAGE_THREE:Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

.field public static final enum PAGE_TWO:Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

.field public static pages:[Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;


# instance fields
.field endFrame:I

.field layoutRes:I

.field position:I

.field startFrame:I

.field stringRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    const-string/jumbo v1, "PAGE_ONE"

    const v3, 0x7f030114

    const v4, 0x7f07065d

    const/16 v6, 0x70

    const/16 v7, 0xb2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->PAGE_ONE:Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    .line 18
    new-instance v3, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    const-string/jumbo v4, "PAGE_TWO"

    const v6, 0x7f030114

    const v7, 0x7f070682

    const/16 v9, 0xb2

    const/16 v10, 0xf0

    move v5, v11

    move v8, v11

    invoke-direct/range {v3 .. v10}, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v3, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->PAGE_TWO:Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    .line 19
    new-instance v3, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    const-string/jumbo v4, "PAGE_THREE"

    const v6, 0x7f030114

    const v7, 0x7f070159

    const/16 v9, 0xf0

    const/16 v10, 0x162

    move v5, v12

    move v8, v12

    invoke-direct/range {v3 .. v10}, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v3, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->PAGE_THREE:Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    .line 25
    new-instance v3, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    const-string/jumbo v4, "PAGE_FOUR"

    const v6, 0x7f030114

    const v7, 0x7f07058c

    const/16 v9, 0x162

    const/16 v10, 0x1ac

    move v5, v13

    move v8, v13

    invoke-direct/range {v3 .. v10}, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v3, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->PAGE_FOUR:Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    .line 26
    new-instance v3, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    const-string/jumbo v4, "PAGE_SIGN_UP"

    const v6, 0x7f030115

    move v5, v14

    move v7, v2

    move v8, v14

    move v9, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v3, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->PAGE_SIGN_UP:Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    .line 11
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    sget-object v1, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->PAGE_ONE:Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->PAGE_TWO:Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->PAGE_THREE:Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    aput-object v1, v0, v12

    sget-object v1, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->PAGE_FOUR:Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    aput-object v1, v0, v13

    sget-object v1, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->PAGE_SIGN_UP:Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    aput-object v1, v0, v14

    sput-object v0, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->$VALUES:[Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    sget-object v1, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->PAGE_ONE:Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->PAGE_TWO:Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->PAGE_THREE:Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    aput-object v1, v0, v12

    sget-object v1, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->PAGE_FOUR:Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    aput-object v1, v0, v13

    sget-object v1, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->PAGE_SIGN_UP:Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    aput-object v1, v0, v14

    sput-object v0, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->pages:[Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->layoutRes:I

    .line 45
    iput p4, p0, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->stringRes:I

    .line 46
    iput p5, p0, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->position:I

    .line 47
    iput p6, p0, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->startFrame:I

    .line 48
    iput p7, p0, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->endFrame:I

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->$VALUES:[Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    return-object v0
.end method
