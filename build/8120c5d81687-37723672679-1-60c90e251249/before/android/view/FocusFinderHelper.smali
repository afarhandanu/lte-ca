.class public Landroid/view/FocusFinderHelper;
.super Ljava/lang/Object;
.source "FocusFinderHelper.java"


# instance fields
.field private greylist-max-o mFocusFinder:Landroid/view/FocusFinder;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/view/FocusFinder;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/view/FocusFinderHelper;->mFocusFinder:Landroid/view/FocusFinder;

    .line 34
    return-void
.end method

.method public static greylist-max-o majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 3

    .line 53
    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p0

    return p0
.end method

.method public static greylist-max-o majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 3

    .line 57
    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public greylist-max-o beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 6

    .line 41
    iget-object v0, p0, Landroid/view/FocusFinderHelper;->mFocusFinder:Landroid/view/FocusFinder;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 5

    .line 49
    iget-object v0, p0, Landroid/view/FocusFinderHelper;->mFocusFinder:Landroid/view/FocusFinder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 6

    .line 37
    iget-object v0, p0, Landroid/view/FocusFinderHelper;->mFocusFinder:Landroid/view/FocusFinder;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/FocusFinder;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .registers 5

    .line 45
    iget-object v0, p0, Landroid/view/FocusFinderHelper;->mFocusFinder:Landroid/view/FocusFinder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result p1

    return p1
.end method
